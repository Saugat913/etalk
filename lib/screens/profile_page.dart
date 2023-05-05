import 'package:etalk/models/user_model.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});

  final User userData = User(
      userName: "someUser",
      userMail: "somemail@mail.com",
      userDescription: "Passionate man");

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Profile",
          style: TextStyle(color: Colors.black, fontSize: 24),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(
              left: screenWidth * 0.11, right: screenWidth * 0.11),
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              CircleAvatar(
                radius: (screenWidth)*0.14 ,
              ),
              const SizedBox(
                height: 9,
              ),
              Text(
                userData.userName,
                style: const TextStyle(fontSize: 19),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                userData.userMail,
                style: const TextStyle(fontSize: 11.7),
              ),
              const SizedBox(
                height: 9,
              ),
              Text(userData.userDescription),
              const SizedBox(
                height: 17,
              ),
              editProfileButton(screenWidth * 0.3, screenHeight * 0.05),
              SizedBox(
                height: screenHeight * 0.04,
              ),
              ...List.generate(
                  7,
                  (index) => Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: ListTile(
                          leading: circularIcon(Icons.settings_outlined),
                          title: const Text("Settings"),
                          trailing:
                              circularIcon(Icons.arrow_forward_ios_outlined,size: 12),
                        ),
                      )),
            ],
          ),
        ),
      ),
    );
  }

  Widget circularIcon(IconData icon,{double? size}) {

    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: Colors.blueGrey.withOpacity(0.1)),
      child: Icon(
        icon,
        color: const Color.fromARGB(255, 179, 162, 233),
        size: size,
      ),
    );
  }

  Widget editProfileButton(double? width, double? height) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: Colors.yellow, borderRadius: BorderRadius.circular(9)),
      child: const Center(
          child: Text(
        "Edit Profile",
        style: TextStyle(color: Colors.white),
      )),
    );
  }
}
