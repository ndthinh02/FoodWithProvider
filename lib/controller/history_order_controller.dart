import 'package:api_food/model/history_order.dart';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../model/cart.dart';

class HistoryOrderController extends ChangeNotifier {
  List<HistoryOrder> mList = [];
  Map<String, HistoryOrder> _items = {};
  List<HistoryOrder> get allItem => mList;
  var todayDate = DateFormat("dd-MM-yyyy hh:mm:ss").format(DateTime.now());

  var snackBarWarningCart = SnackBar(
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
  void addCartToOrder(List<Cart>? cart) {
    HistoryOrder historyOrder = HistoryOrder(
        id: DateTime.now().toString(),
        dateTime:
            DateFormat("dd-MM-yyyy hh:mm:ss").format(DateTime.now()).toString(),
        cart: cart);
    mList.add(historyOrder);
    print('object ${historyOrder.dateTime}}');
    notifyListeners();
  }

  void clear() {
    mList.clear();
    notifyListeners();
  }
}
