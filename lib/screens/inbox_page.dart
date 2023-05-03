import 'package:etalk/models/message_model.dart';
import 'package:etalk/widget/message_card.dart';
import 'package:etalk/widget/message_writer.dart';
import 'package:flutter/material.dart';

// lets assume currently loggined user id 12
class InboxPage extends StatelessWidget {
  InboxPage({super.key, required this.friendName});
  final String friendName;

  final List<MessageModel> dummyMessage = [
    MessageModel(
        message: "Hi",
        fromUid: 12,
        toUid: 18,
        time: const TimeOfDay(hour: 12, minute: 0)),
    MessageModel(
        message: "How are you?",
        fromUid: 12,
        toUid: 18,
        time: const TimeOfDay(hour: 12, minute: 12)),
    MessageModel(
        message: "Hello",
        fromUid: 18,
        toUid: 12,
        time: const TimeOfDay(hour: 12, minute: 2)),
    MessageModel(
        message: "How are you?",
        fromUid: 18,
        toUid: 12,
        time: const TimeOfDay(hour: 12, minute: 0)),
    MessageModel(
        message: "Whats up myan?",
        fromUid: 12,
        toUid: 18,
        time: const TimeOfDay(hour: 12, minute: 0)),
    MessageModel(
        message: "Where are you ?",
        fromUid: 18,
        toUid: 12,
        time: const TimeOfDay(hour: 12, minute: 0)),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.call)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.video_call)),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.more_vert_outlined)),
        ],
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_sharp),
        ),
        title: ListTile(
          contentPadding:EdgeInsets.symmetric(horizontal: 7) ,
          title: Text(
            friendName,
            overflow: TextOverflow.ellipsis,
          ),
          leading: const CircleAvatar(),
        ),
      ),
      body: Container(
        color: Colors.greenAccent,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                child: ListView.builder(
                    itemCount: dummyMessage.length,
                    itemBuilder: (context, index) {
                      return MessageCard(
                        message: dummyMessage.elementAt(index),
                      );
                    })),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8, bottom: 6),
              child: const MessageWriter(),
            ),
            //SizedBox(height: 2,)
          ],
        ),
      ),
    );
  }
}
