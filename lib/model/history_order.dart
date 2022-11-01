import 'cart.dart';

class HistoryOrder {
  String id;
  String dateTime;
  List<Cart>? cart;
  HistoryOrder({required this.id, required this.dateTime, required this.cart});
}
