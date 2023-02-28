
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SizeVar {
  // BuildContext? _context;

  // BuildContext get context => _context!;

  // set context(BuildContext val) => _context = val;

  Size get screenSize => MediaQuery.of(Get.context!).size;



  double get topNotch => double.parse(MediaQuery.of(Get.context!).viewPadding.top.toString());

  double get bottomNotch => MediaQuery.of(Get.context!).viewPadding.bottom;



  double get appBarMainHeight => 30+topNotch;

  double get bottomBarMainHeight => 55+bottomNotch;

}
