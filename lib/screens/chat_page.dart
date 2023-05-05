import 'package:etalk/screens/inbox_page.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  ChatPage({super.key});
  final List<String> userList = [
    "Marzuki Ali",
    "Lesti Kejora",
    "John wick",
    "Luna maya"
  ];
  final List<String> userListSubtitle = [
    "Hello",
    "How are you?",
    "Whats up myan?",
    "Where are you ?"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text(
            "Chats",
            style: TextStyle(color: Colors.black, fontSize: 24),
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          label: const Text("Message"),
          onPressed: () {},
          icon: const Icon(Icons.add_comment_outlined),
          // mini: true,
          // shape: RoundedRectangleBorder(

          //     borderRadius: BorderRadius.all(Radius.circular(12))),
        ),
        body: Container(
          padding: const EdgeInsets.all(12),
          child: Column(children: [
            TextField(
              decoration: InputDecoration(
                  hintText: "Search",
                  prefixIcon: const Icon(Icons.search_sharp),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8))),
            ),
            const SizedBox(
              height: 12,
            ),
            Expanded(
                child: ListView.builder(
              itemCount: userList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>
                            InboxPage(friendName: userList[index])));
                  },
                  leading: const CircleAvatar(),
                  title: Text(userList[index]),
                  subtitle: Text(userListSubtitle[index]),
                );
              },
            )),
            //CustomButtomNavigationBar()
          ]),
        ));
  }
}
