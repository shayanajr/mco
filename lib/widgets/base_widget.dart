import '../base/base_variable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

class BaseWidget {
  static bottomLogo() {
    // return SafeArea(
    return Container(
      child: Align(
        alignment: const FractionalOffset(0.5, 1),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Opacity(
            opacity: 1,
            child: ColorFiltered(
              colorFilter: ColorFilter.mode(
                // Colors.white,
                Color.fromRGBO(214, 102, 182, 0.4),
                BlendMode.srcIn,
              ),
              child: Image.asset(
                "assets/images/logos/logo-footer.png",
                height: 40,
              ),
            ),
          ),
        ),
      ),
    );
  }

  static topLogo(screenSize) {
    return SafeArea(
      child: Align(
        alignment: const FractionalOffset(0.5, 0),
        child: Image.asset(
          "assets/images/logos/logo-square.png",
          width: screenSize.width * 0.3,
        ),
      ),
    );
  }

  static simpleLoading(color, widthPercent, screenSize) {
    return SpinKitFadingCube(
      size: screenSize * widthPercent,
      itemBuilder: (BuildContext context, int index) {
        return DecoratedBox(
          decoration: BoxDecoration(
            color: color,
          ),
        );
      },
    );
  }

  static errorSnackBar(message, second, position) {
    Get.snackbar(
      "error".tr,
      message ?? "",
      colorText: Variable.colorVar.baseLight,
      backgroundColor: Variable.colorVar.darkest.withOpacity(0.75),
      icon: Icon(Icons.warning, color: Variable.colorVar.base),
      snackPosition: position,
      duration: Duration(seconds: second),
    );
  }

  static successSnackBar(message, second, position) {
    Get.snackbar(
      "".tr,
      message,
      icon: Icon(Icons.verified, color: Variable.colorVar.green),
      snackPosition: position,
      duration: Duration(seconds: second),
    );
  }

  static confirmBottomSheet(
    String title,
    String mess, {
    GestureTapCallback? confirmOnTap,
    String? confirmTxt,
    String? closeTxt,
    bool isDismiss = true,
  }) {
    Get.bottomSheet(
      Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    title,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                ),
                !isDismiss
                    ? const Center()
                    : Container(
                        margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                        child: IconButton(
                          onPressed: () {
                            Get.back();
                          },
                          icon: const RotatedBox(
                            quarterTurns: 45,
                            child: Icon(
                              Icons.arrow_forward_ios,
                              size: 15.0,
                            ),
                          ),
                        ),
                      ),
              ],
            ),
            Text(mess),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                    onPressed: confirmOnTap,
                    child: Text(
                      confirmTxt!,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    )),
                TextButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: Text(
                    closeTxt ?? Variable.stringVar.cancel,
                    style: TextStyle(color: Colors.black54),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      isScrollControlled: true,
      backgroundColor: Colors.white,
      isDismissible: isDismiss,
      enableDrag: isDismiss,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10.0),
          topRight: Radius.circular(10.0),
        ),
      ),
    );
  }
}
