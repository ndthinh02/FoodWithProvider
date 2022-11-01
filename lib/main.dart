import 'package:api_food/controller/cart_controller.dart';
import 'package:api_food/controller/controller.dart';
import 'package:api_food/controller/history_order_controller.dart';
import 'package:api_food/screen/home.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:device_preview/device_preview.dart';

main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (ctx) => Controller()),
      ChangeNotifierProvider(create: (ctx) => CartController()),
      ChangeNotifierProvider(create: (ctx) => HistoryOrderController()),
    ],
    child: DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const MyApp(), // Wrap your app
    ),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
