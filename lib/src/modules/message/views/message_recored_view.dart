import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:textless/textless.dart';
import '../../../utils/custom_widgets/rounded_container.dart';

import '../controllers/message_controller.dart';

class MessageRecordView extends GetView<MessageController> {
  const MessageRecordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
                onTap: controller.cancelRecord,
                child: const Icon(
                  Icons.cancel,
                  size: 35,
                )),
            InkWell(
              child: Obx(() => controller.recordTime.value.text),
            ),
            InkWell(
              onTap: () => controller.stopRecord(context),
              child: const RoundedContainer(
                boxShape: BoxShape.circle,
                color: Colors.red,
                height: 45,
                width: 45,
                child: Icon(
                  Icons.send,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
