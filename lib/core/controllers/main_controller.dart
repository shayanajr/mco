import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_navigation/src/snackbar/snackbar.dart';
import 'package:get/state_manager.dart';
import 'package:mco/core/models/api_error.dart';
import 'package:mco/core/models/filter.dart';
import 'package:mco/core/models/version_control.dart'
    as version_control_model;
import 'package:mco/core/services/web_api/version_control.dart'
    as version_control_api;
import 'package:mco/widgets/base_widget.dart';
import 'package:get/get.dart';

class MainController extends GetxController {
  var alwaysTrue = true.obs;
  var alwaysFalse = false.obs;
  var isLoading = true.obs;
  var isShowExitConfirm = false.obs;
  var isShowBottomBar = true.obs;
  var isShowSwitcherButton = false.obs;
  var currentTab = 0.obs;
  Filter _filter = new Filter();

  Filter get filter => _filter;

  @override
  void onInit() {
    super.onInit();
  }

  static final double ratio = MediaQuery.of(Get.context!).size.width / 375;

  Future logOutConfirm(context) async {
    // Get.dialog(LogoutConfirmPopup());
    return false;
  }

  closeFocus() {
    try {
      FocusScope.of(Get.context!).unfocus();
    } catch (_) {
      print("catch");
    }
  }

  showSnackBarCustomize(response) {
    BaseWidget.errorSnackBar(
        ApiError.fromJson((jsonDecode(response.toString()))["error"]),
        3,
        SnackPosition.BOTTOM);
  }

  void exitConfirm() {
  }

  closeExitConfirmPopup() {
    isShowExitConfirm(false);
    Timer(Duration(milliseconds: 200), () {
      Navigator.pop(Get.context!);
    });
  }

  void exitApp() {
    isShowExitConfirm(false);
    Timer(Duration(milliseconds: 200), () {
      Navigator.pop(Get.context!);
      exit(0);
    });
  }

  Future<void> versionCheck() async {
    try {
      version_control_model.VersionControl version =
          await version_control_api.VersionControl.check();
    } catch (_) {}
  }

  void openStore(url) async {
    // launch(url);
  }

  Future<bool> onWillPop() async {

    update();


      return (await showDialog(
            context: Get.context!,
            builder: (context) => AlertDialog(
              title: const Text('Are you sure?'),
              content: const Text('Do you want to exit an App'),
              actions: <Widget>[
                TextButton(
                  onPressed: () => Navigator.of(context).pop(false),
                  child: const Text('No'),
                ),
                TextButton(
                  onPressed: () => Navigator.of(context).pop(true),
                  child: const Text('Yes'),
                ),
              ],
            ),
          )) ??
          false;

  }
}
