import 'package:api_food/screen/detail_food_screen.dart';
import 'package:api_food/screen/detail_food_popular_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

import '../controller/controller.dart';
import '../model/food.dart';
import '../model/food_popularr.dart';
import 'icon_text.dart';

class PopularFood extends StatefulWidget {
  const PopularFood({super.key});

  @override
  State<PopularFood> createState() => _PopularFoodState();
}

class _PopularFoodState extends State<PopularFood> {
  Controller get controller => context.read<Controller>();
  Controller get watchController => context.watch<Controller>();
  List<FoodPopular> get foodPopular => context.read<Controller>().foodPopular();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          margin: const EdgeInsets.only(left: 30, bottom: 14),
          child: Column(
            children: [
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Text(
                    'Popular',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(width: 10),
                  const Text('Food popular'),
                ],
              ),
              Container(
                  margin: const EdgeInsets.only(right: 10),
                  child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: foodPopular.length,
                      itemBuilder: ((context, index) => GestureDetector(
                            onTap: () {
                              final list = foodPopular.map((e) => e.nameFood);
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (ctx) => Screen(
                                        id: foodPopular[index].id,
                                        position: index,
                                      )));
                              print('object${foodPopular[index].nameFood}');
                            },
                            child: Container(
                                child: Row(children: [
                              Container(
                                margin: const EdgeInsets.only(top: 10),
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(
                                            foodPopular[index].imageUrl))),
                              ),
                              Expanded(
                                  child: Column(
                                children: [
                                  Container(
                                      margin: const EdgeInsets.only(top: 14),
                                      height: 100,
                                      decoration: const BoxDecoration(
                                        color: Colors.white70,
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(10),
                                            bottomRight: Radius.circular(10)),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              foodPopular[index].nameFood,
                                              maxLines: 1,
                                              style: const TextStyle(
                                                  fontSize: 22,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              '${foodPopular[index].description}...',
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                            Expanded(
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  IconText(
                                                    iconData: Icons.circle,
                                                    text: foodPopular[index]
                                                        .difficulty,
                                                    iconColor: Colors.orange,
                                                  ),
                                                  IconText(
                                                    iconData: Icons.location_on,
                                                    text:
                                                        '${foodPopular[index].kilometer} km',
                                                    iconColor:
                                                        const Color.fromARGB(
                                                            255, 19, 204, 164),
                                                  ),
                                                  IconText(
                                                    iconData: Icons.access_time,
                                                    text:
                                                        '${foodPopular[index].timer}m',
                                                    iconColor: Colors.orange,
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ))
                                ],
                              ))
                            ])),
                          ))))
            ],
          )),
    );
  }
}
