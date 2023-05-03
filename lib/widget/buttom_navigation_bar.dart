import 'package:flutter/material.dart';

class CustomButtomNavigationBar extends StatelessWidget {
  CustomButtomNavigationBar(
      {super.key,
      required this.iconsDataLists,
      required this.currentIndexPage,
      required this.pages,
      this.onSelectColor,required this.onPressed});
  final int currentIndexPage;
  final List<IconData> iconsDataLists;
  final List<Widget> pages;
  void Function(int index) onPressed;
  Color? onSelectColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ...List.generate(
            iconsDataLists.length,
            (index) => IconButton(
                onPressed: () {
                     onPressed(index);
                },
                icon: Icon(
                  iconsDataLists.elementAt(index),
                  color: currentIndexPage == index
                      ? onSelectColor ?? Colors.blueAccent
                      :null,
                )))
      ],
    );
  }
}
