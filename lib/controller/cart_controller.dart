import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_dialog/flutter_custom_dialog.dart';
import 'package:status_alert/status_alert.dart';

import '../model/cart.dart';

class CartController extends ChangeNotifier {
  Map<String, Cart> _items = {};
  Map<String, Cart> get mListCarts => _items;

  var snackBar = SnackBar(
    duration: const Duration(milliseconds: 1000),
    elevation: 0,
    behavior: SnackBarBehavior.floating,
    backgroundColor: Colors.transparent,
    content: AwesomeSnackbarContent(
      title: 'Warning!',
      message: '  Quantity don\'t < 1  !',
      contentType: ContentType.failure,
    ),
  );
  var snackBarWarningCart = SnackBar(
    margin: EdgeInsets.only(bottom: 20),
    duration: const Duration(milliseconds: 1000),
    elevation: 0,
    behavior: SnackBarBehavior.floating,
    backgroundColor: Colors.transparent,
    content: AwesomeSnackbarContent(
      title: 'Warning!',
      message: 'Please add food in your cart before buy !',
      contentType: ContentType.failure,
    ),
  );
  var snackBarAdd = SnackBar(
    duration: const Duration(milliseconds: 1000),
    elevation: 0,
    behavior: SnackBarBehavior.floating,
    backgroundColor: Colors.transparent,
    content: AwesomeSnackbarContent(
      title: 'Success!',
      message: ' Foo is add your food !',
      contentType: ContentType.success,
    ),
  );

  void addToCarts(BuildContext context, String nameFood, String description,
      double price, int position, String imageUrl, String id) {
    ScaffoldMessenger.of(context).showSnackBar(snackBarAdd);
    if (_items.containsKey(id)) {
      _items.update(
          id,
          (value) => Cart(
              id: value.id,
              quantity: value.quantity + 1,
              description: value.description,
              nameFood: value.nameFood,
              imageUrl: value.imageUrl,
              price: value.price,
              position: value.position));
    } else {
      _items.putIfAbsent(
          id,
          () => Cart(
              id: DateTime.now().toString(),
              quantity: 1,
              description: description,
              nameFood: nameFood,
              imageUrl: imageUrl,
              price: price,
              position: position));
    }
    print('object ${_items}');
    notifyListeners();
  }

  double get totalAmount {
    var total = 0.0;
    _items.forEach((key, cartItem) {
      total = total + (cartItem.price * cartItem.quantity);
    });
    notifyListeners();
    return total;
  }

  void addQuantity(BuildContext context, int position) {
    _items.values.toList()[position].quantity++;
    notifyListeners();
    return;
  }

  void subQuantity(BuildContext context, int position) {
    final item = _items.values.toList()[position].quantity;
    _items.values.toList()[position].quantity--;
    if (item <= 1) {
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      return;
    }
    notifyListeners();
  }

  void removeItem() {
    _items.forEach((key, value) {
      _items.remove(key);
      notifyListeners();
    });
  }

  void buyNowFood(BuildContext context) {
    if (_items.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(snackBarWarningCart);
    } else {
      StatusAlert.show(
        context,
        duration: const Duration(seconds: 3),
        title: 'Notification',
        subtitle: 'Your cart has been purchased ',
        configuration: const IconConfiguration(icon: Icons.done),
        maxWidth: 260,
      );
      _items.clear();
    }
    notifyListeners();
  }
}
