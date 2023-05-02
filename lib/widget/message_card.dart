import 'package:etalk/models/message_model.dart';
import 'package:flutter/material.dart';

class MessageCard extends StatelessWidget {
  const MessageCard({super.key, required this.message});
  final MessageModel message;

  Widget buildSendMessageCard() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Spacer(),
          Flexible(
              child: Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(7)),
            child: Text(message.message),
          ))
        ],
      ),
    );
  }

  Widget buildRecievedMessageCard() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Flexible(
              child: Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
                color: Colors.orangeAccent,
                borderRadius: BorderRadius.circular(7)),
            child: Text(message.message),
          )),
          const Spacer()
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // lets assume currently loggined user id 12
    return message.fromUid != 12
        ? buildRecievedMessageCard()
        : buildSendMessageCard();
  }
}
