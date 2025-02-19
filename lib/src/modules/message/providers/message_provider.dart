import 'package:get/get.dart';

import '../../../models/v_chat_message.dart';

import '../../../utils/api_utils/dio/custom_dio.dart';

class MessageProvider extends DisposableInterface {
  Future<List<VChatMessage>> loadMoreMessages(
    int roomId,
    String lastMessageId,
  ) async {
    final messages = (await CustomDio().send(
            reqMethod: "GET",
            path: "message",
            query: {"id": lastMessageId, "roomId": roomId.toString()}))
        .data['data'] as List;
    return messages.map((e) => VChatMessage.fromMap(e)).toList();
  }
}
