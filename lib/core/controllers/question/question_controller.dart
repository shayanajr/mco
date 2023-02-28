import 'package:mco/core/middleware/middleware.dart';
import 'package:mco/core/models/api.dart';
import 'package:mco/core/models/filter.dart';
import 'package:mco/widgets/base_widget.dart';
import 'package:get/get.dart';
import 'package:mco/core/models/question.dart' as question_model;
import 'package:mco/core/services/local_storage/user.dart'
as user_local;
import 'package:mco/core/services/web_api/question.dart'
as question_api;

import 'package:get/get.dart';

class QuestionController extends GetxController {
  @override
  void onInit() {
    filter.page = 0;
    fetchQuestions();
    super.onInit();
  }

  var selectedPrice = 1000.obs;
  var selectedPoint = 10.obs;
  Rx<bool> addQuestionIsOpen = false.obs;
  var flagFetchQuestionsLoading = true.obs;
  var hasQuestionSelected = false.obs;
  RxList<question_model.Question> questions = <question_model.Question>[].obs;

  Rxn<question_model.Question?> _question = Rxn<question_model.Question?>();

  question_model.Question? get question => _question.value;

  set question(question_model.Question? value) {
    _question.value = value;
  }

  var isLoadingForPagination = false.obs;
  var isLoadFirstObject = false.obs;

  final Filter _filter = Filter();

  Filter get filter => _filter;

  var customerCount = (1000 / 10).round().obs;

  void updateCustomerCount() {
    customerCount.value = (selectedPrice.value / selectedPoint.value).round();
  }

  void fetchQuestions() async {
    ///TODO:resolve
    if (questions.isEmpty) {
      filter.page = 1;
      filter.limit = 1;
    }
    filter.token = user_local.User.getUser()!.access_token!;

    final resp = await question_api.Question.getQuestions(filter);

    if (resp != null) {
      Api api = Middleware.resultValidation(resp);
      if (api.result!) {
        if (questions.isNotEmpty) {
          ///TODO:resolve
          // questions.addAll(question_model.getAllQuestions(api.data['list']));
          questions(question_model.getAllQuestions(api.data['list']));
        } else {
          filter.total = int.parse(api.data['paginator']['count'].toString());
          questions(question_model.getAllQuestions(api.data['list']));
          (isLoadFirstObject(true));
          update();
        }

        if (question.isNull && questions.isNotEmpty) _question(questions[0]);
        try{
          if (!question.isNull && questions.isNotEmpty) {
            for (var item in questions){
              if (item.slug == question!.slug) _question(item);
            }
          }
        }catch(error){

        }


        if (questions.isEmpty) addQuestionIsOpen(true);
      } else {
        BaseWidget.errorSnackBar(
          api.error!.message,
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
    flagFetchQuestionsLoading(false);
    isLoadingForPagination(false);
  }

  void clearQuestions({bool all = false}) {
    if (all) {
      filter.page = 0;
      questions([]);
      update();
    } else {
      ///TODO:resolve empty question value
      question = null;
      update();
    }
  }

  Future<void> addQuestion() async {
    addQuestionIsOpen(false);
    flagFetchQuestionsLoading(true);
    filter.title = "title";
    filter.role = "owner";
    filter.code = "code";
    filter.score = selectedPoint.value;
    filter.count_total = customerCount.value;
    filter.item_id = user_local.User.getProfile()!.item_id;
    final resp = await question_api.Question.addQuestion(filter);
    fetchQuestions();
  }

  void setQuestion(question_model.Question question) {
    _question(question);
  }

}
