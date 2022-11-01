import 'package:api_food/controller/history_order_controller.dart';
import 'package:api_food/screen/detail_food_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

import '../controller/cart_controller.dart';

class BodyCartScreen extends StatefulWidget {
  BodyCartScreen({super.key});

  @override
  State<BodyCartScreen> createState() => _BodyCartScreenState();
}

class _BodyCartScreenState extends State<BodyCartScreen> {
  CartController get watchController => context.watch<CartController>();
  CartController get readController => context.read<CartController>();
  HistoryOrderController get controller =>
      context.read<HistoryOrderController>();

  late final cart = watchController.mListCarts.values.toList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Expanded(
          child: watchController.mListCarts.isEmpty
              ? const Center(
                  child: Text('Your cart is empty'),
                )
              : ListView.builder(
                  itemCount: readController.mListCarts.length,
                  itemBuilder: ((context, index) => GestureDetector(
                        onTap: () {
                          // Navigator.of(context).push(MaterialPageRoute(
                          //     builder: (ctx) =>
                          //         DetailFoodScreen(position: index)));
                        },
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.all(20),
                              padding: const EdgeInsets.all(10),
                              width: 150,
                              height: 150,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image:
                                          NetworkImage(cart[index].imageUrl)),
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(16)),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: Text(cart[index].nameFood,
                                            // ignore: prefer_const_constructors
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                            )),
                                      ),
                                      IconButton(
                                          onPressed: () {
                                            readController.removeItem();
                                          },
                                          icon:
                                              const Icon(Icons.close_outlined))
                                    ],
                                  ),
                                  Text(
                                    cart[index].description,
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '\$ ${cart[index].price * cart[index].quantity}',
                                        maxLines: 1,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          IconButton(
                                              onPressed: () {
                                                readController.subQuantity(
                                                    context, index);
                                              },
                                              icon: const Icon(
                                                Icons.remove_circle_outline,
                                                color: Colors.cyan,
                                              )),
                                          Text('${cart[index].quantity}'),
                                          IconButton(
                                              onPressed: () {
                                                readController.addQuantity(
                                                    context, index);
                                              },
                                              icon: const Icon(
                                                Icons.add_circle_outline,
                                                color: Colors.cyan,
                                              )),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )),
                ),
        ),
        Container(
            margin:
                const EdgeInsets.only(top: 10, right: 10, left: 10, bottom: 30),
            width: double.infinity,
            height: 50,
            // ignore: prefer_const_literals_to_create_immutables
            decoration: BoxDecoration(boxShadow: [
              const BoxShadow(
                color: Colors.black,
                offset: Offset(
                  5.0,
                  5.0,
                ), //Offset
                blurRadius: 10.0,
                spreadRadius: 2.0,
              ), //BoxShadow
              const BoxShadow(
                color: Colors.white,
                offset: Offset(0.0, 0.0),
                blurRadius: 0.0,
                spreadRadius: 0.0,
              ), //BoxShadow
            ], color: Colors.cyan, borderRadius: BorderRadius.circular(50)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
                  'Total : \$ ${watchController.totalAmount}',
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 16, color: Colors.white),
                ),
                GestureDetector(
                  onTap: () {
                    readController.buyNowFood(context);
                    controller.addCartToOrder(cart);
                  },
                  child: const Text(
                    'ORDER NOW',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                ),
              ],
            ))
      ]),
    );
  }
}
