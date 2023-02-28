import 'package:mco/core/base/base_variable.dart';
import 'package:mco/core/middleware/middleware.dart';
import 'package:mco/core/models/api.dart';
import 'package:mco/core/models/user.dart' as user_model;
import 'package:mco/core/models/profile.dart' as profile_model;
import 'package:mco/core/services/local_storage/user.dart'
as user_local;
import 'package:mco/core/services/local_storage/hive_box.dart';
import 'package:mco/core/services/web_api/user.dart' as user_api;
// import 'package:mco/screen/auth_screen/otp_verify_screen.dart';
import 'package:mco/widgets/base_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_navigation/src/snackbar/snackbar.dart';
import 'package:get/state_manager.dart';
import 'package:get_storage/get_storage.dart';


class UserController extends GetxController {
  late TextEditingController mobile;
  late TextEditingController identityController;
  late TextEditingController credentialController;
  Rx<bool> loadingForLogin = false.obs;
  Rx<bool> loadingForOtp = false.obs;

  // late user_model.UserModel user;
  late user_model.User user;
  late String otpCode = "";

  GetStorage userBox = GetStorage();


  late Rx<String> selectedCountryCode = "+971".obs;

  List<String> prettyCountryCods = [];

  final Map<String, String> countryCods = {
    "+98": "IR", // Iran
    "+971": "AE", // United Arab Emirates
    "+1": "US", // United States
    "+44": "GB", // United Kingdom
    "+33": "FR", // france
    "+61": "AU", // Australia
    "+968": "OM", // Oman
    "+974": "QA", // Qatar
  };

  @override
  void onInit() {
    super.onInit();
    mobile = TextEditingController();
    identityController = TextEditingController();
    credentialController = TextEditingController();
    fetchUser();
  }

  fetchUser() async {
    try {
      user = user_local.User.getUser()!;
    } catch (_) {}
  }

  @override
  void onClose() {
    mobile.dispose();
    super.onClose();
  }

  List<String> getCodesList() {
    return countryCods.keys.toList();
  }

  String? identityValidator(String? value) {
    if (value!.length == 0) {
      return "";
    }
    return null;
  }

  String? mobileValidator(String? value) {
    if (value!.length < 10) {
      return "";
    }
    return null;
  }

  void login() async {
    try {
      loadingForLogin.value = true;
      final resp = await user_api.User.sendOtp(
        mobile: "$selectedCountryCode${mobile.text}",
        country: countryCods[selectedCountryCode.value]!,
      );
      loadingForLogin.value = false;
      if (resp != null) {
        Api api = Middleware.resultValidation(resp);
        if (api.result != null) {
          // Get.to(OtpVerifyScreen());
        } else {
          BaseWidget.errorSnackBar(
            api.error!.mobile,
            2,
            SnackPosition.BOTTOM,
          );
        }
      }
    } catch (e) {
      print(e);
    }
  }

  void verifyOtp() async {
    try {
      loadingForOtp.value = true;
      final resp = await user_api.User.verifyOtp(
        mobile: "$selectedCountryCode${mobile.text}",
        country: countryCods[selectedCountryCode.value]!,
        otp: otpCode,
      );
      loadingForOtp.value = false;
      if (resp != null) {
        Api api = Middleware.resultValidation(resp);
        if (api.result!) {
          // user = user_model.UserModel.fromJson(api.data!);
          // localUser.add(int.parse(user.id!), user);

          user_local.User.eraseUser();
          user_local.User.storeUser(user_model.User.fromJson(api.data!));
          final resp = await user_api.User.getProfile();
          if (resp != null) {
            Api api = Middleware.resultValidation(resp);
            if (api.result!) {
              user_local.User.storeProfile(
                  profile_model.Profile.fromJson(api.data!));


              Get.offAllNamed("/map_main_screen");
            } else {
              finalAction();
            }
          } else {
            finalAction();
          }

          Get.offAllNamed("/map_main_screen");
        } else {
          BaseWidget.errorSnackBar(
            api.error!.otp,
            2,
            SnackPosition.BOTTOM,
          );
        }
      } else {
        BaseWidget.errorSnackBar(
          "Internet connection error",
          2,
          SnackPosition.BOTTOM,
        );
      }
    } catch (e) {
      print(e);
    }
  }

  void checkUserLogin() async {

    if (user_local.User.hasData()) {
      try {
        final resp = await user_api.User.getProfile();
        if (resp != null) {
          Api api = Middleware.resultValidation(resp);
          if (api.result!) {
            user_local.User.storeProfile(
                profile_model.Profile.fromJson(api.data!));

            Get.offAllNamed("/home_screen");
          } else {
            finalAction();
          }
        } else {
          finalAction();
        }
      } catch (_) {
        user_local.User.eraseUser();
        finalAction();
      }
    } else {
      finalAction();
    }

  }

  void loginViaPass() async {
    try {
      loadingForLogin.value = true;
      final resp = await user_api.User.login(
        identity: identityController.text,
        credential: credentialController.text,
      );
      loadingForLogin.value = false;
      if (resp != null) {
        Api api = Middleware.resultValidation(resp);
        if (api.result!) {
          identityController.text = "";
          credentialController.text = "";
          update();

          user_local.User.eraseUser();
          user_local.User.storeUser(user_model.User.fromJson(api.data!));
          final resp = await user_api.User.getProfile();
          if (resp != null) {
            Api api = Middleware.resultValidation(resp);
            if (api.result!) {
              user_local.User.storeProfile(
                  profile_model.Profile.fromJson(api.data!));
            }
          }
          Get.offAllNamed("/home_screen");
        } else {
          BaseWidget.errorSnackBar(
            api.error!.otp,
            2,
            SnackPosition.BOTTOM,
          );
        }
      } else {
        BaseWidget.errorSnackBar(
          "Internet connection error",
          2,
          SnackPosition.BOTTOM,
        );
      }
    } catch (e) {
      BaseWidget.errorSnackBar(
        "Error in login!",
        2,
        SnackPosition.BOTTOM,
      );
    }
  }

  void logout() {
    BaseWidget.confirmBottomSheet(
      Variable.stringVar.logout,
      Variable.stringVar.doYouWantLogout,
      confirmOnTap: () async {
        user = user_local.User.getUser()!;
        await user_api.User.deleteSession(user.access_token!);
        finalAction();
      },
      confirmTxt: Variable.stringVar.yes,
      closeTxt: Variable.stringVar.no,
    );
  }

  void finalAction() {
    user_local.User.eraseUser();
    Get.offAllNamed('/login_via_password');
  }
}
