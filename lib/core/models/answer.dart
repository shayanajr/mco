import 'dart:convert';

import 'package:mco/core/models/user.dart';

class Answer {
  String? userId;
  String? title;
  String? slug;
  int? timeCreate;
  User? user;

  Answer({this.userId, this.title, this.slug, this.timeCreate, this.user});

  Answer.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    title = json['title'];
    slug = json['slug'];
    timeCreate = json['time_create'];
    user = json['user'] != null ? User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['user_id'] = userId;
    data['title'] = title;
    data['slug'] = slug;
    data['time_create'] = timeCreate;
    if (user != null) {
      data['user'] = user!.toJson();
    }
    return data;
  }
}
