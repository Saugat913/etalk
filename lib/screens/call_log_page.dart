import 'package:flutter/material.dart';

class CallLogPage extends StatelessWidget {
  const CallLogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Calls",
          style: TextStyle(color: Colors.black, fontSize: 24),
        ),
      ),
    );
  }
}
