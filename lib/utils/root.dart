import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example/controllers/authController.dart';
import 'package:getx_example/controllers/userController.dart';
import 'package:getx_example/screens/home.dart';
import 'package:getx_example/screens/login.dart';


class Root extends GetWidget<AuthController> {
  @override
  Widget build(BuildContext context) {
    return GetX(
      initState: (_) async {
        Get.put<UserController>(UserController());
      },
      builder: (_) {
        if (Get.find<AuthController>().user?.uid != null) {
          return Home();
        } else {
          return Login();
        }
      },
    );
  }
}