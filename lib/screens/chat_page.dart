import 'package:etalk/widget/buttom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ChatPage extends StatelessWidget {
  ChatPage({super.key});
  final List<String> user_list = [
    "Marzuki Ali",
    "Lesti Kejora",
    "John wick",
    "Luna maya"
  ];
  final List<String> user_list_subtitle = [
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
          title: Text(
            "Chats",
            style: TextStyle(color: Colors.black, fontSize: 24),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.more_horiz,
                  color: Colors.black45,
                ))
          ],
        ),
        body: Container(
          padding: EdgeInsets.all(12),
          child: Column(children: [
            TextField(
              decoration: InputDecoration(
                  hintText: "Search",
                  prefixIcon: Icon(Icons.search_sharp),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8))),
            ),
            SizedBox(
              height: 12,
            ),
            Expanded(
                child: ListView.builder(
              itemCount: user_list.length,
              itemBuilder: (context, index) {
                return ListTile(
                    leading: CircleAvatar(), title: Text(user_list[index]),subtitle: Text(user_list_subtitle[index]),);
              },
            )),
            CustomButtomNavigationBar()
          ]),
        ));
  }
}
