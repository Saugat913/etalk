import 'package:flutter/material.dart';

class CustomButtomNavigationBar extends StatelessWidget {
  CustomButtomNavigationBar({super.key});

  final List<Icon> iconsLists = [
    const Icon(
      Icons.chat_bubble_rounded,
    ),
    const Icon(Icons.call_outlined),
    const Icon(Icons.video_call_outlined),
    const Icon(Icons.account_circle_outlined),
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ...List.generate(
            iconsLists.length,
            (index) => IconButton(
                onPressed: () {}, icon: iconsLists.elementAt(index)))
      ],
    );
  }
}
