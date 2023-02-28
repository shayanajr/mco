import 'dart:convert';
import 'package:mco/core/models/user.dart' as user_model;
import 'package:mco/core/models/profile.dart' as profile_model;
import 'package:get_storage/get_storage.dart';


class User {
  static final userBox = GetStorage();

  static hasData() {
    return (userBox.read('user') != null);
  }

  static storeUser(user_model.User user) {
    userBox.write('user', user.toJson());
  }

  static user_model.User? getUser() {
    try {
      return hasData()
          ? user_model.User.fromJson(jsonDecode(userBox.read('user')))
          : null;
    } catch (_) {
      return null;
    }
  }

  static storeProfile(profile_model.Profile profile) {
    userBox.write('profile', profile.toJson());
  }

  static profile_model.Profile? getProfile() {
    try {
      return hasData()
          ? profile_model.Profile.fromJson(jsonDecode(userBox.read('profile')))
          : null;
    } catch (_) {
      return null;
    }
  }

  static eraseUser() {
    try {
      userBox.erase();
      return true;
    } catch (_) {
      return false;
    }
  }
}
