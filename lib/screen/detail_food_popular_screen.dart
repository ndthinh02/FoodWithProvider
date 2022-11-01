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

class Screen extends StatefulWidget {
  int position;
  String? id;
  int? idCategory;

  Screen({super.key, required this.position, this.id, this.idCategory});

  @override
  State<Screen> createState() => _DetailFoodScreenState();
}

class _DetailFoodScreenState extends State<Screen> {
  Controller get watchController => context.watch<Controller>();
  CartController get readController => context.read<CartController>();

  FoodPopular get foodPoplular =>
      context.read<Controller>().detailFoodPopular(widget.id);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(foodPoplular.nameFood),
        elevation: 0.2,
        backgroundColor: Colors.cyan,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (ctx) => CartScreen(
                          position: widget.position,
                        )));
                print('object ${widget.id}');
              },
              icon: const Icon(Icons.shopping_cart))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Image.network(
            foodPoplular.imageUrl,
            fit: BoxFit.cover,
            width: double.infinity,
          ),
          Container(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    foodPoplular.nameFood,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 25,
                        fontStyle: FontStyle.italic),
                  ),
                  Text(
                    '\$ ${foodPoplular.price}',
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
                      foodPoplular.rateStar,
                      (index) => const Icon(
                        Icons.star,
                        size: 15,
                        color: Colors.amber,
                      ),
                    )),
                    const SizedBox(width: 10),
                    Text('${foodPoplular.rate}'),
                    const SizedBox(width: 10),
                    Text('${foodPoplular.comments} comments'),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconText(
                      iconData: Icons.circle,
                      text: foodPoplular.difficulty,
                      iconColor: Colors.orange,
                    ),
                    IconText(
                      iconData: Icons.location_on,
                      text: '${foodPoplular.kilometer} km',
                      iconColor: Color.fromARGB(255, 19, 204, 164),
                    ),
                    Expanded(
                      child: IconText(
                        iconData: Icons.access_time,
                        text: '${foodPoplular.timer}m',
                        iconColor: Colors.orange,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 30),
                Text(foodPoplular.description),
              ],
            ),
          )
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.cyan,
        onPressed: () {
          // print('object${foodPoplular.id}');
          readController.addToCarts(
              context,
              foodPoplular.nameFood,
              foodPoplular.description,
              foodPoplular.price,
              widget.position,
              foodPoplular.imageUrl,
              foodPoplular.id);
        },
        // ignore: prefer_const_constructors

        child: const Icon(
          Icons.shopping_cart,
        ),
      ),
    );
  }
}
