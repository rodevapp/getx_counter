import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Controller extends GetxController {
  var count = 0.obs;
  var typeButtom = 'None buttom is clicked!'.obs;
  var iconButtom = Icons.code.obs;
  var colorApp = 'The app initial color is blue!'.obs;
  var textColor = TextStyle(color: Colors.blue).obs;

  increment() {
    count++;
    typeButtom.value = 'Add buttom is clicked!';
    colorApp.value = 'Now the App color is Red!'.toUpperCase();
    iconButtom.value = Icons.add;
    textColor.value = TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.red,
    );
    Get.changeTheme(ThemeData(primarySwatch: Colors.red));
    Get.snackbar(
      'Congratulations',
      'You clicked in add buttom and changed state of app',
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  reset() {
    count.value = 0;
    typeButtom.value = 'Reset buttom is clicked!';
    colorApp.value = 'Now the App Color is Yellow!';
    iconButtom.value = Icons.refresh;
    textColor.value = TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.black,
      backgroundColor: Colors.yellow,
    );
    Get.changeTheme(ThemeData(primarySwatch: Colors.yellow));
    Get.snackbar(
      'Congratulations',
      'You clicked in reset buttom and changed state of app',
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  decrement() {
    count--;
    typeButtom.value = 'Minus buttom is clicked!';
    colorApp.value = 'now the app  color is green!';
    iconButtom.value = Icons.remove;
    textColor.value = TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.green,
    );
    Get.changeTheme(ThemeData(primarySwatch: Colors.green));
    Get.snackbar(
      'Congratulations',
      'You clicked in remove buttom and changed state of app',
      snackPosition: SnackPosition.BOTTOM,
    );
  }
}
