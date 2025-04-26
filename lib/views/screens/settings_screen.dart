import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ug_chat_app/controllers/auth_controller.dart';
import 'package:ug_chat_app/views/screens/editprofile_screen.dart';
import 'package:ug_chat_app/views/screens/home_screen.dart';

class SettingsScreen extends StatelessWidget {
  SettingsScreen({super.key});
  var controller = Get.put(
    AuthController(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffDDE6E7),
      appBar: AppBar(
        backgroundColor: Color(0xffDDE6E7),
        //leading: IconButton(
        // onPressed: () {
        //    Get.to(
        //    () => HomeScreen(),
        //    );
        //    },
        //   icon: Icon(
        //     Icons.arrow_back,
        //      size: 25,
        //  ),
        // ),
        actions: [
          PopupMenuButton(
            icon: Icon(Icons.more_vert),
            color: Colors.white,
            itemBuilder: (context) => [
              PopupMenuItem(
                child: GestureDetector(
                  onTap: () {
                    Get.to(() => EditprofileScreen());
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.edit,
                        size: 25,
                        color: Colors.black,
                      ),
                      SizedBox(width: 5),
                      Text(
                        "Edit Profile",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff000000),
                          fontFamily: "Roboto",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              PopupMenuItem(
                child: GestureDetector(
                  onTap: () async {
                    // await controller.signOutMethod();
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.logout,
                        size: 25,
                        color: Colors.black,
                      ),
                      SizedBox(width: 5),
                      Text(
                        "Log Out",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff000000),
                          fontFamily: "Roboto",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          //IconButton(
          //  onPressed: () {},
          // icon: Icon(Icons.more_vert),
          // ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/Ellipse 26.png",
              height: 120,
              width: 120,
            ),
            SizedBox(height: 10),
            Text(
              "Mike tails",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w400,
                color: Color(0xff000000),
                fontFamily: "Roboto",
              ),
            ),
            Text(
              "Love the Cuteness",
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w400,
                color: Color(0xff000000),
                fontFamily: "Roboto",
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 4),
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                //height: 55,
                //width: 350,
                decoration: BoxDecoration(
                    color: Color(0xff6C6D6D6),
                    borderRadius: BorderRadius.circular(15)),
                child: Row(children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.person_3),
                  ),
                  //SizedBox(width: 5),
                  Text(
                    "Invite a friends",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff000000),
                      fontFamily: "Roboto",
                    ),
                  ),
                ]),
              ),
            ),
            SizedBox(height: 5),
            Center(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 4),
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                //height: 55,
                //width: 350,
                decoration: BoxDecoration(
                  color: Color(0xff6C6D6D6),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.mobile_screen_share_sharp),
                  ),
                  //SizedBox(width: 5),
                  Text(
                    "App Updates",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff000000),
                      fontFamily: "Roboto",
                    ),
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
