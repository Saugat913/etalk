import 'package:flutter/material.dart';

class VideoCallLogPage extends StatelessWidget {
  const VideoCallLogPage({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Video Calls",
          style: TextStyle(color: Colors.black, fontSize: 24),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(
              left: screenWidth * 0.02, right: screenWidth * 0.02, top: 17),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text("Recents"),
            const SizedBox(
              height: 9,
            ),
            ...List.generate(
                12,
                (index) => ListTile(
                      leading: const CircleAvatar(),
                      title: Text("User $index"),
                      subtitle: Row(
                        children: const [
                          Icon(Icons.missed_video_call_outlined),
                          Text("Outgoing")
                        ],
                      ),
                      trailing: const Icon(Icons.video_call_outlined),
                    ))
          ]),
        ),
      ),
    );
  }
}
