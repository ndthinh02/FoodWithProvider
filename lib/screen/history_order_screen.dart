import 'package:api_food/controller/history_order_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

class HistoryOrderScreen extends StatefulWidget {
  HistoryOrderScreen({super.key});

  State<HistoryOrderScreen> createState() => _HistoryOrderScreenState();
}

class _HistoryOrderScreenState extends State<HistoryOrderScreen> {
  HistoryOrderController get readController =>
      context.read<HistoryOrderController>();
  HistoryOrderController get watchController =>
      context.watch<HistoryOrderController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              icon: Icon(Icons.clear),
              onPressed: () {
                readController.clear();
              },
            )
          ],
          title: const Text('History your order'),
          backgroundColor: Colors.cyan,
        ),
        body: watchController.allItem.isEmpty
            ? const Center(child: Text('Your history is empty'))
            : ListView.builder(
                itemCount: watchController.allItem.length,
                itemBuilder: ((context, index) {
                  final cart = watchController.allItem[index].cart![0];
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.all(10),
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                  cart.imageUrl,
                                ))),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            cart.nameFood,
                            style: const TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Date order: ${watchController.allItem[index].dateTime}',
                            style: const TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w300),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Quantity: ${cart.quantity}',
                            style: const TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w300),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Price:   ${cart.quantity * cart.price}',
                            style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w300,
                                color: Colors.red),
                          ),
                        ],
                      )
                    ],
                  );
                })));
  }
}
