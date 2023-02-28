import 'package:mco/core/base/base_variable.dart';
import 'package:mco/core/middleware/middleware.dart';
import 'package:mco/core/models/api.dart';
import 'package:mco/core/models/profile.dart' as profile_model;
import 'package:mco/core/services/local_storage/user.dart' as user_local;
import 'package:mco/core/services/web_api/user.dart';
import 'package:mco/widgets/base_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  Rx<bool> getProfileLoading = false.obs;
  Rx<bool> updateProfileLoading = false.obs;
  Rx<bool> showPassword = false.obs;
  late profile_model.Profile profile;

  ///TODO : resolve error for profile variable
  void updateTextField({
    required Map<String, TextEditingController> controllers,
  }) {
    for (final key in controllers.keys) {
      switch (key) {
        case 'email':
          controllers[key]!.text = profile.email ?? '';
          break;
        case 'phoneNumber':
          controllers[key]!.text = profile.mobile ?? '';
          break;
        case 'address':
          controllers[key]!.text = profile.address_1 ?? '';
          break;
        case 'first name':
          controllers[key]!.text = profile.first_name ?? '';
          break;
        case 'last name':
          controllers[key]!.text = profile.last_name ?? '';
          break;
      }
    }
  }

  void _addProfileToLocal() async {
    user_local.User.storeProfile(profile);
  }

  Future<void> getUserProfile() async {
    getProfileLoading.value = true;
    final resp = await User.getUserProfileApi();
    if (resp != null) {
      Api api = Middleware.resultValidation(resp);
      if (api.result!) {
        profile = profile_model.Profile.fromJson(api.data!);

        getProfileLoading.value = false;
      } else {
        BaseWidget.errorSnackBar(
          api.error!.email ?? api.error!.mobile,
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

    ///TODO : resolve error for profile variable
    _addProfileToLocal();
  }

  String checkUserPhoneNumberFormat(String phoneNumber) {
    if (phoneNumber.contains('+98')) {
      return phoneNumber.replaceAll('+98', '');
    }
    return phoneNumber;
  }

  void updateUserProfile(Map<String, dynamic> data) async {
    updateProfileLoading.value = true;

    final resp = await User.updateUserProfileApi(data);

    if (resp != null) {
      Api api = Middleware.resultValidation(resp);
      if (api.result!) {
        final profileApi = profile_model.Profile.fromJson(api.data!);
        // await _hiveCtl.update(
        //   key: profile.id!,
        //   obj: profileApi,
        //   save: profileApi.save,
        // );
        profile = profileApi;

        /// for refresh profile screen
        getProfileLoading.value = true;
        getProfileLoading.value = false;

        BaseWidget.successSnackBar(
          Variable.stringVar.successfullyDone,
          2,
          SnackPosition.BOTTOM,
        );
      } else {
        BaseWidget.errorSnackBar(
          api.error!.email ?? api.error!.mobile,
          10,
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
    updateProfileLoading.value = false;
  }
}
