import 'package:api_food/model/categories.dart';
import 'package:api_food/screen/cart_screen.dart';
import 'package:api_food/screen/detail_food_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controller/controller.dart';
import '../model/food.dart';
import '../widget/body_category_food.dart';

class CategoriesFood extends StatefulWidget {
  final int idCategories;
  int positionCategory;
  CategoriesFood(
      {super.key, required this.idCategories, required this.positionCategory});

  @override
  State<CategoriesFood> createState() => _CategoriesFoodState();
}

class _CategoriesFoodState extends State<CategoriesFood> {
  Controller get watchController => context.watch<Controller>();
  late final mListCaterories = watchController.mListFood;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (ctx) => CartScreen()));
                },
                icon: const Icon(Icons.shopping_cart))
          ],
          backgroundColor: Colors.cyan,
          title: Text(
              '${watchController.categories[widget.positionCategory].nameCategory} food'),
        ),
        body: const BodyCategoryFood());
  }
}
