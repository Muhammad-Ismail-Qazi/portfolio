import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppController extends GetxController {
  //TODO: Implement HomeController

  @override
  void onClose() {}

  // Use RxBool for reactive boolean values
  final toggleTheme = false.obs;

  toggleThemeMode() {
    toggleTheme.value = !toggleTheme.value;

    Get.changeTheme(
      toggleTheme.value ? ThemeData.light() : ThemeData.dark(),
    );
  }
}