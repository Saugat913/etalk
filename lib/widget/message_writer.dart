import 'package:flutter/material.dart';

class MessageWriter extends StatefulWidget {
  const MessageWriter({super.key});

  @override
  State<MessageWriter> createState() => _MessageWriterState();
}

class _MessageWriterState extends State<MessageWriter> {
  bool isMessageEmpty = true;
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(9),
        color: Colors.white,
      ),
      width: screenWidth,
      height: 50,
      child: Row(children: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.emoji_emotions_outlined)),
        Expanded(
            child: TextField(
          onChanged: (value) {
            if (value.isEmpty) {
              setState(() {
                isMessageEmpty = true;
              });
            } else {
              setState(() {
                isMessageEmpty = false;
              });
            }
          },
          decoration: const InputDecoration(
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
          ),
        )),
        isMessageEmpty
            ? IconButton(onPressed: () {}, icon: const Icon(Icons.image_outlined))
            : IconButton(onPressed: () {}, icon: const Icon(Icons.send)),
        isMessageEmpty
            ? IconButton(onPressed: () {}, icon: const Icon(Icons.mic_outlined))
            : Container(),
      ]),
    );
  }
}
