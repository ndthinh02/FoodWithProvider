import 'package:api_food/model/data/food_popular.dart';
import 'package:api_food/model/food_popularr.dart';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/categories.dart';
import '../model/data/data.dart';
import '../model/food.dart';

class Controller extends ChangeNotifier {
  List<Categories> categories = FAKE_CATEGORIES;
  List<Food> mListFood = FAKE_FOOD;
  List<FoodPopular> mListFoodPoplular = Fake_food_popular;

  void filterCategoryFood(int? id) {
    mListFood = FAKE_FOOD.where((element) => element.idCategory == id).toList();
    // print('idCategoriess${mListFoodCategory.length}');
    notifyListeners();
  }

  List<FoodPopular> foodPopular() {
    return mListFoodPoplular.toList();
  }

  FoodPopular detailFoodPopular(String? id) {
    return mListFoodPoplular.firstWhere((element) => element.id == id);
  }
}
