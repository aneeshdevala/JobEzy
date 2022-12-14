// To parse this JSON data, do
//
//     final searchResponse = searchResponseFromJson(jsonString);

import 'dart:convert';

List<SearchResponse> searchResponseFromJson(String str) =>
    List<SearchResponse>.from(
        json.decode(str).map((x) => SearchResponse.fromJson(x)));

class ModelSearch {
  List<SearchResponse>? listOfSearchResponse;
  String? message;
  ModelSearch({this.listOfSearchResponse, this.message});
  factory ModelSearch.fromJson(List<dynamic> json) {
    return ModelSearch(
      listOfSearchResponse: json == []
          ? []
          : List<SearchResponse>.from(
              json.map((x) => SearchResponse.fromJson(x))),
    );
  }
}

class SearchResponse {
  SearchResponse({
    this.success,
    this.status,
    this.message,
    this.stack,
    this.id,
    this.image,
    this.userId,
    this.company,
    this.place,
    this.state,
    this.country,
    this.designation,
    this.jobFor,
    this.description,
    this.vacancy,
    this.jobType,
    this.salaryMin,
    this.salaryMax,
    required this.applicationStatus,
    this.isBlocked,
    this.isOpen,
    this.reportMessages,
    this.createdAt,
    this.updatedAt,
    this.v,
  });
  bool? success;
  int? status;
  String? stack;
  String? id;
  String? userId;
  String? company;
  String? place;
  String? image;
  String? state;
  String? country;
  String? designation;
  String? jobFor;
  String? description;
  String? vacancy;
  String? jobType;
  int? salaryMin;
  String? message;
  int? salaryMax;
  List<Map<String, dynamic>> applicationStatus;
  bool? isBlocked;
  bool? isOpen;
  List<dynamic>? reportMessages;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? v;
  

  factory SearchResponse.fromJson(Map<String, dynamic> json) => SearchResponse(
        success: json["success"],
        status: json["status"],
        message: json["message"],
        stack: json["stack"],
        id: json["_id"],
        userId: json["userId"],
        company: json["company"],
        image: json["image"],
        place: json["place"],
        state: json["state"],
        country: json["country"],
        designation: json["designation"],
        jobFor: json["jobFor"],
        description: json["description"],
        vacancy: json["vacancy"],
        jobType: json["jobType"],
        salaryMin: json["salaryMin"],
        salaryMax: json["salaryMax"],
        applicationStatus: 
            List<Map<String, dynamic>>.from(json["applicationStatus"].map((x) => x)), 
        isBlocked: json["isBlocked"],
        isOpen: json["isOpen"],
        reportMessages:
            List<dynamic>.from(json["reportMessages"].map((x) => x)),
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        v: json["__v"],
      );

  fromJson(e) {}
}
