import 'dart:convert';
import 'package:mco/core/models/api.dart';
import 'dart:io' show Platform;
import 'package:mco/core/models/api_single_object.dart';
import 'package:mco/core/models/filter.dart';
import 'package:mco/core/services/web_api/api_helper.dart';
import 'package:http/http.dart' as http;
// import 'package:package_info_plus/package_info_plus.dart';
import 'package:mco/core/models/version_control.dart' as model;

import 'api_helper.dart';

class VersionControl {
  static ApiHelper apiHelper = new ApiHelper();

  static Future check() async {
    try {
      // final buildNumber = (await PackageInfo.fromPlatform()).buildNumber;

      final res = await http.post(
          Uri.parse(
              "${apiHelper.apiUri}api/tools/version?platform=${Platform.isAndroid ? 'android' : 'ios'}"),
          body: {
            // "version": buildNumber,
          });
      var resp = res.body;
      var data = (json.decode(res.body));
      model.VersionControl version = model.VersionControl.map(data["data"]);
      // version.isForce=1;
      return version;
    } on Exception catch (error) {}
  }
}
