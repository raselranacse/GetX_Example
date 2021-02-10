import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example/controllers/authBinding.dart';
import 'package:getx_example/utils/root.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: AuthBinding(),
      home: Root(),
      theme: ThemeData.dark(),
    );
  }
}