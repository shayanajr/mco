import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get/state_manager.dart';
import 'package:mco/core/models/category.dart' as category_model;
import 'package:mco/core/utils/category_list.dart';

class CategoryController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    list.value = categories;
  }

  category_model.Category category = category_model.Category();
  RxList<category_model.Category> list = <category_model.Category>[].obs;
}
