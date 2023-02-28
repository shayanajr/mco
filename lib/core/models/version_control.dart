import 'package:flutter/cupertino.dart';

class VersionControl {
  String? version;
  String? url;
  int? isForce;
  int? appActiveCode;
  String? message;

  VersionControl({
    @required this.version,
    @required this.url,
    @required this.isForce,
    @required this.appActiveCode,
    @required this.message,
  });

  factory VersionControl.fromJson(Map<String, dynamic> json) {
    return VersionControl(
        version: json['version'],
        url: json['url'],
        isForce: json['is_force'],
        appActiveCode: json['app_active_code'],
        message: json['message']);
  }

  VersionControl.map(dynamic obj) {
    this.version = obj['version'];
    this.url = obj['url'];
    this.isForce = obj['is_force'];
    this.appActiveCode = obj['app_active_code'];
    this.message = obj['message'];
  }

  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    map["version"] = version;
    map["url"] = url;
    map["isForce"] = isForce;
    map["appActiveCode"] = appActiveCode;
    map["message"] = message;
    return map;
  }

  @override
  String toString() {
    return '{ '
        '"version" : "${this.version}", '
        '"url" : "${this.url}", '
        '"isForce" : ${this.isForce}, '
        'appActiveCode${this.appActiveCode}, '
        '"message" : "${this.message}"  '
        '}';
  }
}
