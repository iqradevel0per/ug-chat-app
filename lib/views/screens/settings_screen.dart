import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ug_chat_app/views/screens/editprofile_screen.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffDDE6E7),
      appBar: AppBar(
        backgroundColor: Color(0xffDDE6E7),
        leading: IconButton(
          onPressed: () {
            //Get.back();
          },
          icon: Icon(
            Icons.arrow_back,
            size: 30,
          ),
        ),
        actions: [
          PopupMenuButton(
            icon: Icon(Icons.more_vert),
            color: Color(0xff8FA5AA),
            itemBuilder: (context) => [
              PopupMenuItem(
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/Forward Arrow.png",
                      width: 40,
                      height: 25,
                    ),
                    // Icon(
                    //  Icons.download_done_sharp,
                    //  size: 30,
                    //  color: Colors.black,
                    // ),
                    SizedBox(width: 0),
                    Text(
                      "Share",
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
                child: Row(
                  children: [
                    Icon(
                      Icons.block,
                      size: 25,
                      color: Colors.black,
                    ),
                    SizedBox(width: 5),
                    Text(
                      "Block User",
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
              PopupMenuItem(
                child: Row(
                  children: [
                    Icon(
                      Icons.dock_outlined,
                      size: 25,
                      color: Colors.black,
                    ),
                    SizedBox(width: 5),
                    Text(
                      "Report User",
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
            ],
          ),
          //IconButton(
          //  onPressed: () {},
          // icon: Icon(Icons.more_vert),
          // ),
        ],
      ),
      body: SafeArea(
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
                margin: EdgeInsets.symmetric(horizontal: 25),
                //height: 55,
                //width: 350,
                decoration: BoxDecoration(
                    color: Color(0xff6C6D6D6),
                    borderRadius: BorderRadius.circular(15)),
                child: Row(children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.notifications),
                  ),
                  //SizedBox(width: 5),
                  Text(
                    "Mute notification",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff000000),
                      fontFamily: "Roboto",
                    ),
                  ),
                  SizedBox(width: 150),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.radio_button_off_outlined))
                ]),
              ),
            ),
            SizedBox(height: 5),
            Center(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 8),
                margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                //height: 55,
                //width: 350,
                decoration: BoxDecoration(
                  color: Color(0xff6C6D6D6),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.music_note),
                  ),
                  //SizedBox(width: 5),
                  Text(
                    "Custom notification",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff000000),
                      fontFamily: "Roboto",
                    ),
                  ),
                  SizedBox(width: 140),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.library_music_outlined))
                ]),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 20, right: 25, left: 25),
              //padding: EdgeInsets.symmetric(horizontal: 120),
              decoration: BoxDecoration(
                color: Color(0xff6C6D6D6),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Text(
                      "Muture Friends",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff000000),
                        fontFamily: "Roboto",
                      ),
                    ),
                  ),
                  SizedBox(
                    //height: 300,
                    //width: double.infinity,
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 4,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(
                              top: 0, bottom: 20, right: 25, left: 25),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                "assets/images/Ellipse 28.png",
                                height: 50,
                                width: 50,
                              ),
                              SizedBox(width: 8),
                              Text(
                                "Lukas",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff000000),
                                  fontFamily: "Roboto",
                                ),
                              ),
                              SizedBox(width: 150),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.mark_email_read_rounded))
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
