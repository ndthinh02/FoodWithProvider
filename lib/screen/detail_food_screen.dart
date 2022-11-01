import 'package:api_food/controller/cart_controller.dart';
import 'package:api_food/model/food_popularr.dart';
import 'package:api_food/screen/cart_screen.dart';
import 'package:api_food/widget/icon_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

import '../controller/controller.dart';
import '../model/data/data.dart';
import '../model/food.dart';

class DetailFoodScreen extends StatefulWidget {
  int position;
  String? id;
  int? idCategory;

  DetailFoodScreen(
      {super.key, required this.position, this.id, this.idCategory});

  @override
  State<DetailFoodScreen> createState() => _DetailFoodScreenState();
}

class _DetailFoodScreenState extends State<DetailFoodScreen> {
  Controller get watchController => context.watch<Controller>();
  CartController get readController => context.read<CartController>();
  late final detailFood = watchController.mListFood[widget.position];
  // Food get foodPoplular => context.read<Controller>().foodPopular(widget.id);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.2,
        title: Text(detailFood.nameFood),
        backgroundColor: Colors.cyan,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (ctx) => CartScreen(
                          position: widget.position,
                        )));
              },
              icon: const Icon(Icons.shopping_cart))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Image.network(
            detailFood.imageUrl,
            fit: BoxFit.cover,
            width: double.infinity,
          ),
          Container(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    detailFood.nameFood,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 25,
                        fontStyle: FontStyle.italic),
                  ),
                  Text(
                    '\$ ${detailFood.price}',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 25,
                    ),
                  ),
                ],
              )),
          Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  children: [
                    Wrap(
                        children: List.generate(
                      detailFood.rateStar,
                      (index) => const Icon(
                        Icons.star,
                        size: 15,
                        color: Colors.amber,
                      ),
                    )),
                    const SizedBox(width: 10),
                    Text('${detailFood.rate}'),
                    const SizedBox(width: 10),
                    Text('${detailFood.comments} comments'),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconText(
                      iconData: Icons.circle,
                      text: detailFood.difficulty,
                      iconColor: Colors.orange,
                    ),
                    IconText(
                      iconData: Icons.location_on,
                      text: '${detailFood.kilometer} km',
                      iconColor: Color.fromARGB(255, 19, 204, 164),
                    ),
                    Expanded(
                      child: IconText(
                        iconData: Icons.access_time,
                        text: '${detailFood.timer}m',
                        iconColor: Colors.orange,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 30),
                Text(detailFood.description),
              ],
            ),
          )
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.cyan,
        onPressed: () {
          // print('object${detailFood.id}');
          readController.addToCarts(
              context,
              detailFood.nameFood,
              detailFood.description,
              detailFood.price,
              widget.position,
              detailFood.imageUrl,
              detailFood.id);
        },
        // ignore: prefer_const_constructors

        child: const Icon(
          Icons.shopping_cart,
        ),
      ),
    );
  }
}
