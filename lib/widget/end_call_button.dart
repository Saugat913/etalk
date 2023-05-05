import 'package:flutter/material.dart';


class EndCallButton extends StatelessWidget {
  const EndCallButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(18)),
          color: Colors.red),
      child: Icon(
        Icons.call_end,
        color: Colors.white,
      ),
    );
  }
}