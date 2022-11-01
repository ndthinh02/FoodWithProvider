import 'package:api_food/controller/history_order_controller.dart';
import 'package:api_food/screen/history_order_screen.dart';
import 'package:api_food/widget/body_cart_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

import '../controller/cart_controller.dart';
import '../controller/controller.dart';
import '../model/cart.dart';

class CartScreen extends StatefulWidget {
  int? position;
  final List<Cart>? cart;
  CartScreen({super.key, this.position, this.cart});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  HistoryOrderController get controller =>
      context.read<HistoryOrderController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (ctx) => HistoryOrderScreen()));
                },
                icon: const Icon(Icons.history))
          ],
          backgroundColor: Colors.cyan,
          title: const Text('Your cart'),
        ),
        body: BodyCartScreen());
  }
}
