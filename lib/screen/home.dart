import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

import '../controller/controller.dart';
import '../widget/main_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Controller get controller => context.read<Controller>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          padding: const EdgeInsets.only(right: 10, left: 20),
          margin: const EdgeInsets.only(top: 50, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'City',
                    style: TextStyle(
                        fontFamily: 'RaleWay',
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.cyan),
                  ),
                  Row(
                    children: [
                      const Text('Ha Noi'),
                      GestureDetector(
                        child: const Icon(Icons.arrow_drop_down_rounded),
                        onTap: () {},
                      )
                    ],
                  ),
                ],
              ),
              Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.cyan),
                child: IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {},
                ),
              )
            ],
          ),
        ),
        Expanded(
            child: SingleChildScrollView(
          child: MainPage(),
        ))
      ],
    ));
  }

  void _showCountry() {}
}
