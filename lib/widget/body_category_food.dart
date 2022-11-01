import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

import '../controller/controller.dart';
import '../screen/detail_food_screen.dart';

class BodyCategoryFood extends StatefulWidget {
  const BodyCategoryFood({super.key});

  @override
  State<BodyCategoryFood> createState() => _BodyCategoryFoodState();
}

class _BodyCategoryFoodState extends State<BodyCategoryFood> {
  Controller get watchController => context.watch<Controller>();
  late final mListCaterories = watchController.mListFood;
  @override
  Widget build(BuildContext context) {
    return mListCaterories.isEmpty
        ? const Center(
            child: Text('Food is up coming'),
          )
        : ListView.builder(
            itemCount: watchController.mListFood.length,
            itemBuilder: ((context, index) => GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (ctx) => DetailFoodScreen(
                              position: index,
                              idCategory: mListCaterories[index].idCategory,
                            )));
                  },
                  child: Stack(children: [
                    Container(
                      padding: const EdgeInsets.only(top: 10),
                      margin: const EdgeInsets.all(20),
                      width: double.infinity,
                      height: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: NetworkImage(
                                  watchController.mListFood[index].imageUrl),
                              fit: BoxFit.cover)),
                    ),
                    Positioned(
                        left: 40,
                        top: 20,
                        child: Container(
                            margin: const EdgeInsets.only(top: 14),
                            height: 40,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(10),
                                border:
                                    Border.all(color: Colors.white, width: 2)),
                            child: Container(
                              margin: const EdgeInsets.all(10),
                              child: Text(
                                mListCaterories[index].nameFood,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ))),
                    Container(
                      margin: const EdgeInsets.only(top: 150, right: 40),
                      child: Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                              width: 80,
                              margin: const EdgeInsets.only(top: 14),
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      color: Colors.white, width: 2)),
                              child: Container(
                                  margin: const EdgeInsets.all(10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Icon(
                                        Icons.timer,
                                        color: Colors.cyan,
                                      ),
                                      Text(
                                        '${mListCaterories[index].timer} m',
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                    ],
                                  )))),
                    )
                  ]),
                )));
  }
}
