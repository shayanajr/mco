import 'dart:convert';
import 'package:mco/core/models/question_body.dart';
import 'package:mco/core/models/user.dart';

List<Question> getAllQuestions(data) =>
    data.map<Question>((x) => Question.fromMap(x)).toList();

class Question {
  String? userId;
  String? title;
  String? slug;
  int? status;
  String? type;
  int? timeCreate;
  QuestionBody? body;

  Question({
    this.userId,
    this.title,
    this.slug,
    this.status,
    this.type,
    this.timeCreate,
    this.body,
  });

  factory Question.fromMap(Map<String, dynamic> json) => Question(
        userId: json["userId"],
        title: json["title"],
        slug: json["slug"],
        status: json["status"],
        type: json["type"],
        timeCreate: json["timeCreate"],
        body: json["body"],
      );

  Question.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    title = json['title'];
    slug = json['slug'];
    status = json['status'];
    type = json['type'];
    timeCreate = json['time_create'];
    body = json['body'] != null ? QuestionBody.fromJson(json['body']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_id'] = userId;
    data['title'] = title;
    data['slug'] = slug;
    data['status'] = status;
    data['type'] = type;
    data['time_create'] = timeCreate;
    if (body != null) {
      data['body'] = body!.toJson();
    }
    return data;
  }
}
