import 'package:flutter/material.dart';

class CallLogPage extends StatelessWidget {
  const CallLogPage({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Calls",
          style: TextStyle(color: Colors.black, fontSize: 24),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(
              left: screenWidth * 0.02, right: screenWidth * 0.02, top: 17),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text("Recents"),
            SizedBox(
              height: 9,
            ),
            ...List.generate(
                12,
                (index) => ListTile(
                      leading: CircleAvatar(),
                      title: Text("User $index"),
                      subtitle: Row(
                        children: [
                          Icon(Icons.call_missed_outgoing),
                          Text("Outgoing")
                        ],
                      ),
                      trailing: Icon(Icons.call_outlined),
                    ))
          ]),
        ),
      ),
    );
  }
}
