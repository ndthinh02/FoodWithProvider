import 'package:api_food/screen/category_food_screen.dart';
import 'package:api_food/widget/popular_food.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

import '../controller/controller.dart';
import '../model/food.dart';
import 'icon_text.dart';

class MainPage extends StatefulWidget {
  int? index;
  MainPage({super.key, this.index});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  PageController pageController = PageController(viewportFraction: 0.8);
  Controller get controller => context.read<Controller>();
  Controller get watchController => context.watch<Controller>();

  var _currentPage = 0.0;
  var _scaleFactor = 0.8;
  int indexPage = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currentPage = pageController.page!;
        indexPage = pageController.initialPage;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 20),
          height: 280,
          child: GestureDetector(
            onTap: () {},
            child: PageView.builder(
                controller: pageController,
                itemCount: controller.categories.length,
                itemBuilder: (ctx, pos) {
                  return _buildPageItem(pos);
                }),
          ),
        ),
        const SizedBox(height: 40),
        DotsIndicator(
          dotsCount: controller.categories.length,
          position: _currentPage,
          decorator: DotsDecorator(
            activeColor: Colors.cyan,
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
          ),
        ),
        const SizedBox(height: 10),
        const PopularFood(),
      ],
    );
  }

  Widget _buildPageItem(int positon) {
    Matrix4 matrix4 = new Matrix4.identity();
    if (positon == _currentPage.floor()) {
      var curentScale = 1 - (_currentPage - positon) * (1 - _scaleFactor);
      matrix4 = Matrix4.diagonal3Values(1, curentScale, 1);
    } else if (positon == _currentPage.floor() + 1) {
      var curentScale =
          _scaleFactor + (_currentPage - positon + 1) * (1 - _scaleFactor);
      matrix4 = Matrix4.diagonal3Values(1, curentScale, 1);
    }

    return Consumer<Controller>(
      builder: ((context, value, child) => Transform(
            transform: matrix4,
            child: Stack(
              children: [
                GestureDetector(
                  onTap: () {
                    controller.filterCategoryFood(value.categories[positon].id);
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (ctx) => CategoriesFood(
                              idCategories: value.categories[positon].id,
                              positionCategory: positon,
                            )));
                  },
                  child: Container(
                    margin: const EdgeInsets.only(right: 17),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 240,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(23),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  value.categories[positon].imageUrl))),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: const EdgeInsets.only(left: 30, right: 30),
                    child: Container(
                      padding: const EdgeInsets.only(left: 20, top: 10),
                      width: double.infinity,
                      height: 110,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(23),
                          // ignore: prefer_const_literals_to_create_immutables
                          boxShadow: [
                            const BoxShadow(
                                color: Color(0xFFe8e8e8),
                                offset: Offset(0, 5),
                                blurRadius: 10.0),
                            const BoxShadow(
                                color: Color(0xFFe8e8e8),
                                offset: Offset(5, 0),
                                blurRadius: 10.0)
                          ]),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            value.categories[positon].nameCategory,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              Wrap(
                                  children: List.generate(
                                value.categories[positon].rateStar,
                                (index) => const Icon(
                                  Icons.star,
                                  size: 15,
                                  color: Colors.amber,
                                ),
                              )),
                              const SizedBox(width: 10),
                              Text('${value.categories[positon].rate}'),
                              const SizedBox(width: 10),
                              Text(
                                  '${value.categories[positon].comments} comments'),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconText(
                                iconData: Icons.circle,
                                text: value.categories[positon].difficulty,
                                iconColor: Colors.orange,
                              ),
                              IconText(
                                iconData: Icons.location_on,
                                text:
                                    '${value.categories[positon].kilometer} km',
                                iconColor: Color.fromARGB(255, 19, 204, 164),
                              ),
                              Expanded(
                                child: IconText(
                                  iconData: Icons.access_time,
                                  text: '${value.categories[positon].timer}m',
                                  iconColor: Colors.orange,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
