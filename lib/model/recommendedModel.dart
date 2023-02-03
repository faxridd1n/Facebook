import 'package:flutter/cupertino.dart';

class RecommendedModel {
  String image;
  String userName;
  String actionCategory;
  String time;
  Icon actionIcon;
  RecommendedModel(
      {required this.image,
      required this.userName,
      required this.actionCategory,
      required this.time,
      required this.actionIcon});
}
