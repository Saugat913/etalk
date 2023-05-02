import 'package:etalk/screens/inbox_page.dart';
import 'package:etalk/widget/buttom_navigation_bar.dart';
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
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_horiz,
                  color: Colors.black45,
                ))
          ],
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
            CustomButtomNavigationBar()
          ]),
        ));
  }
}
