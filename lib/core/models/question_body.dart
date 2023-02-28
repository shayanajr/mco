import 'dart:convert';

import 'package:mco/core/models/answer.dart';
import 'package:mco/core/models/user.dart';

class QuestionBody {
  User? user;
  String? description;
  List<Answer?>? answer;

  QuestionBody({
    this.user,
    this.description,
    this.answer,
  });

  QuestionBody.fromJson(Map<String, dynamic> json) {
    user = json['user'] != null ? User.fromJson(json['user']) : null;
    description = json['description'];
    if (json['answer'] != null) {
      answer = <Answer>[];
      json['answer'].forEach((v) {
        answer!.add(Answer.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  <String, dynamic>{};
    if (user != null) {
      data['user'] = user!.toJson();
    }
    data['description'] = description;
    if (answer != null) {
      data['answer'] = answer!.map((v) => v!.toJson()).toList();
    }
    return data;
  }
}

