import 'package:mco/core/models/api_error.dart';

class ApiSingleObject {
  bool? result;
  String? data;
  String? url;
  List? ticket;
  String? paginator;

  ApiSingleObject({this.result, this.data,this.url,this.ticket,this.paginator});

  factory ApiSingleObject.fromJson(Map<String, dynamic> json) {
    return ApiSingleObject(
      result: json['result'],
      data: json['data'],
      url: json['url'],
      ticket: json['ticket'],
      paginator: json['paginator'],
    );
  }
}
