import 'package:mco/core/models/api.dart';

class Middleware {
  static Api resultValidation( result) {
    var resp;
    try {
      resp = Api.fromJson(result);
    } catch (e) {
      if (result['data'] is List && !result['result']) {
        result['data'] = <String, dynamic>{};
        resp = Api.fromJson(result);
      } else if (result['error'] is List && result['error'].isEmpty) {
        result['error'] = <String, dynamic>{};
        resp = Api.fromJson(result);
      }
    }
    return resp;
  }
}
