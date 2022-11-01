import 'package:flutter/cupertino.dart';

class FoodPopular extends ChangeNotifier {
  String imageUrl;
  String description;
  String nameFood;
  double rate;
  int rateStar;
  int comments;
  String difficulty;
  double kilometer;
  int timer;
  int idCategory;
  double price;
  String id;

  FoodPopular(
      {required this.id,
      required this.idCategory,
      required this.description,
      required this.nameFood,
      required this.rateStar,
      required this.comments,
      required this.rate,
      required this.difficulty,
      required this.timer,
      required this.kilometer,
      required this.imageUrl,
      required this.price});
}
