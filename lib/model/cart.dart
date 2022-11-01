import 'food.dart';

class Cart {
  String? id;
  String imageUrl;
  String description;
  String nameFood;
  int position;

  int quantity;
  double price;

  Cart(
      {required this.position,
      this.id,
      required this.description,
      required this.nameFood,
      required this.imageUrl,
      required this.quantity,
      required this.price});
}
