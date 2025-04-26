import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class WriteAMsg extends StatelessWidget {
  const WriteAMsg({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController writeMsgController = TextEditingController();
    return Scaffold(
      backgroundColor: Color(0xffDDE6E7),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                ),
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 15),
                      //height: 55,
                      //width: 190,
                      decoration: BoxDecoration(
                        color: Color(0xff1CBDC8),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.phone_forwarded_outlined,
                              size: 30,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(width: 70),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.video_camera_back,
                              size: 30,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 45,
                      ),
                      child: CircleAvatar(
                        radius: 40,
                        backgroundImage:
                            AssetImage("assets/images/Ellipse 26.png"),
                      ),
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.menu,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 3),
          Text(
            "onilne",
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w700,
              color: Colors.grey.shade600,
              fontFamily: "Roboto",
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(50),
                  right: Radius.circular(50),
                ),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                        itemCount: 5,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Container(
                            alignment: index % 2 == 0
                                ? Alignment.centerLeft
                                : Alignment.centerRight,
                            margin: EdgeInsets.only(top: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.grey.shade500,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Text(
                                "onilne",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                  fontFamily: "Roboto",
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
                  SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: TextFormField(
                      controller: writeMsgController,
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                        hintText: "Write a Message",
                        hintStyle: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                        suffixIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.messenger_outline_outlined)),
                        filled: true,
                        fillColor: Color(0xff1C6D6D6),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(35),
                        ),
                      ),
                      cursorColor: Colors.black,
                    ),
                  ),
                  SizedBox(height: 50),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
