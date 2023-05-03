import 'package:etalk/screens/call_log_page.dart';
import 'package:etalk/screens/chat_page.dart';
import 'package:etalk/screens/profile_page.dart';
import 'package:etalk/screens/video_call_log_page.dart';
import 'package:etalk/widget/buttom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({super.key});

  @override
  State<IndexPage> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  final List<Widget> pages = [
    ChatPage(),
    CallLogPage(),
    VideoCallLogPage(),
    ProfilePage()
  ];

  final List<IconData> iconsDataLists = [
    Icons.chat_bubble_rounded,
    Icons.call_outlined,
    Icons.video_call_outlined,
    Icons.account_circle_outlined,
  ];
  int currentIndexPage = 0;
  void onItemTapped(int index){
    setState(() {
      currentIndexPage=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndexPage],

      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // floatingActionButton: FloatingActionButton(onPressed:(){},child: Icon(Icons.add),mini: true,),
      bottomNavigationBar: BottomAppBar(
        // notchMargin: 5.0,
        // shape: CircularNotchedRectangle(),
        // color: Colors.black,
        child:CustomButtomNavigationBar(
        iconsDataLists: iconsDataLists,
        currentIndexPage: currentIndexPage,
        pages: pages,
        onPressed: onItemTapped,
      ),)
    );
  }
}
