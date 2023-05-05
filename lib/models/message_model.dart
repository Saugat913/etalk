import 'package:flutter/material.dart';

class MessageModel {
  MessageModel(
      {required this.message,
      required this.fromUid,
      required this.toUid,
      required this.time});
  String message;
  int toUid;
  int fromUid;
  TimeOfDay time;
}
