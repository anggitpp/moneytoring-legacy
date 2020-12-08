import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moneytoring/view/pages/pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: StatisticPage(),
    );
  }
}
