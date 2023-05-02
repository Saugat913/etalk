import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CustomButtomNavigationBar extends StatelessWidget {
  CustomButtomNavigationBar({super.key});

  final List<Icon> _icons_lists = [
    Icon(
      Icons.chat_bubble_rounded,
    ),
    Icon(Icons.call_outlined),
    Icon(Icons.video_call_outlined),
    Icon(Icons.account_circle_outlined),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ...List.generate(
              _icons_lists.length,
              (index) => IconButton(
                  onPressed: () {}, icon: _icons_lists.elementAt(index)))
        ],
      ),
    );
  }
}
