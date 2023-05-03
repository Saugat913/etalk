import 'package:flutter/material.dart';


class VideoCallLogPage extends StatelessWidget {
  const VideoCallLogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text(
            "Video Calls",
            style: TextStyle(color: Colors.black, fontSize: 24),
          ),
        ),
    );
  }
}