import 'package:example/utils/custom_alert.dart';
import 'package:example/utils/custom_dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:v_chat_sdk/v_chat_sdk.dart';
import '../models/user.dart';

class HomeController {
  final BuildContext context;

  HomeController(this.context);

  Future<List<User>> getUsers() async {
    try {
      final res = (await CustomDio().send(
        reqMethod: "get",
        path: "user/all",
      ))
          .data['data'] as List;
      return res.map((e) => User.fromMap(e)).toList();
    } catch (err) {
      CustomAlert.showError(context: context, err: err.toString());
      rethrow;
    }
  }

  void startChat(String email) async {
    try {
      await VChatController.instance.createSingleChat(
        ctx: context,
        peerEmail: email,
      );
    } on VChatSdkException catch (err) {
      CustomAlert.showError(context: context, err: err.toString());
      rethrow;
    }
  }
}
