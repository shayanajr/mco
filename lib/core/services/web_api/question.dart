import 'dart:convert';
import 'package:mco/core/models/filter.dart';
import 'package:http/http.dart' as http;

import 'api_helper.dart';

class Question {
  static ApiHelper apiHelper = ApiHelper();

  static Future getQuestions(Filter filter) async {
    try {
      final res = await http.post(
        Uri.parse(apiHelper.apiUri + apiHelper.questionList),
        body: {
          "limit": "1000",
          "page": "1",
        },
        headers: {'token': filter.token!},
      );
      return json.decode(res.body);
    } on Exception catch (error) {
      return null;
    }
  }

  static Future getQuestion(Filter filter) async {
    try {
      final res = await http.post(
        Uri.parse(apiHelper.apiUri + apiHelper.questionGet),
        body: {
          "limit": "1000",
          "page": "1",
        },
        headers: {'token': filter.token!},
      );
      return json.decode(res.body);
    } on Exception catch (error) {
      return null;
    }
  }

  static Future addQuestion(Filter filter) async {
    try {
      final res = await http.post(
        Uri.parse(apiHelper.apiUri + apiHelper.questionAdd),
        body: {
          'title': filter.title.toString(),
          'code': filter.code.toString(),
          'score': filter.score.toString(),
          'item_id': filter.item_id.toString(),
          'count_total': filter.count_total.toString(),
        },
        headers: {'token': filter.token!},
      );
      return json.decode(res.body);
    } on Exception catch (error) {
      return null;
    }
  }
}
