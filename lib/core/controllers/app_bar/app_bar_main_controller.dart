import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:flutter/material.dart';

import 'package:get/state_manager.dart';

class AppBarMainController extends GetxController {
  var hintText = "Search".obs;
  var text = "".obs;
  late TextEditingController textController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
  }

  void clearTextField() {
    textController.clear();
    text(textController.text);
  }

  void search() {
    text(textController.text);
  }
}
