import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_counter/controller.dart';

class HomePage extends StatelessWidget {
  final Controller controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Get App Sample'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('You are clicked in:'),
            Obx(() => Text(controller.typeButtom.value)),
            Obx(() => Icon(controller.iconButtom.value)),
            Obx(() => Text(
                  controller.colorApp.value,
                  style: controller.textColor.value,
                )),
            Obx(() => Text(controller.count.value.toString())),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                  child: Icon(Icons.add),
                  onPressed: controller.increment,
                  tooltip: 'Increment',
                ),
                FloatingActionButton(
                  child: Icon(Icons.refresh),
                  onPressed: controller.reset,
                  tooltip: 'Reset',
                ),
                FloatingActionButton(
                  child: Icon(Icons.remove),
                  onPressed: controller.decrement,
                  tooltip: 'Decrement',
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
