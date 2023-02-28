import 'dart:convert';
import 'package:mco/core/services/local_storage/user.dart'
    as user_local;
import 'package:mco/core/models/api.dart';
import 'package:mco/core/services/web_api/api_helper.dart';
import 'package:http/http.dart' as http;

class User {
  static ApiHelper apiHelper = new ApiHelper();

  static Future? sendOtp(
      {required String mobile, required String country}) async {
    try {
      final res = await http.post(
        Uri.parse(apiHelper.apiUri + apiHelper.mobile),
        body: {"mobile": mobile, "country": country, "source": "owner"},
      );
      return json.decode(res.body);
    } on Exception catch (error) {
      /// if network exception
      return null;
    }
  }

  static Future? verifyOtp({
    required String mobile,
    required String country,
    required String otp,
  }) async {
    try {
      final res = await http.post(
        Uri.parse(apiHelper.apiUri + apiHelper.verifyOtp),
        body: {
          "mobile": mobile,
          "country": country,
          "otp": otp,
        },
      );
      return json.decode(res.body);
    } on Exception catch (error) {
      return null;
    }
  }

  static Future? getUserProfileApi() async {

    try {
      final res = await http.post(
        Uri.parse(apiHelper.apiUri + apiHelper.userProfile),
        headers: {'token':user_local.User.getUser()!.access_token!},
      );
      return json.decode(res.body);
    } on Exception catch (error) {
      /// if network exception
      return null;
    }
  }

  static Future? getProfile() async {
    try {
      final res = await http.post(
        Uri.parse(apiHelper.apiUri + apiHelper.userProfile),
        headers: {'token': user_local.User.getUser()!.access_token!},
      );
      return json.decode(res.body);
    } on Exception catch (error) {
      /// if network exception
      return null;
    }
  }

  static Future? updateUserProfileApi(Map<String, dynamic> profileInfo) async {

    try {
      final res = await http.post(
        Uri.parse(apiHelper.apiUri + apiHelper.updateUserProfile),
        body: {
          "first_name": profileInfo['first_name'],
          "last_name": profileInfo['last_name'],
          "address_1": profileInfo['address_1'] ?? '',
        },
        headers: {'token': user_local.User.getUser()!.access_token!},
      );
      return json.decode(res.body);
    } on Exception catch (error) {
      /// if network exception
      return null;
    }
  }

  static Future? login({
    required String identity,
    required String credential,
  }) async {
    try {
      final res = await http.post(
        Uri.parse(apiHelper.apiUri + apiHelper.login),
        body: {
          "credential": credential,
          "identity": identity,
        },
      );
      return json.decode(res.body);
    } on Exception catch (error) {
      print(error);
      return null;
    }
  }


  static Future deleteSession(String token) async {
    try {
      final res = await http
          .post(Uri.parse(apiHelper.apiUri + 'user/logout'), body: {
        "token": token,
      });
      var resp = Api.fromJson(json.decode(res.body));
      return resp;
    } on Exception catch (error) {
      return Api(error: null, result: null, data: null);
    }
  }

}
