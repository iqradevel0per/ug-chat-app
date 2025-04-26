import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ug_chat_app/views/screens/home_screen.dart';

class EditprofileScreen extends StatelessWidget {
  EditprofileScreen({super.key});
  TextEditingController nameController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  XFile? pickedFile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffDDE6E7),
      appBar: AppBar(
        backgroundColor: Color(0xffDDE6E7),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back,
            size: 30,
          ),
        ),
      ),
      body: SafeArea(
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Stack(
                    children: [
                      Container(
                        child: Image.asset(
                          "assets/images/Ellipse 26.png",
                          height: 130,
                          width: 130,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: 90,
                          left: 95,
                        ),
                        child: IconButton(
                          style: IconButton.styleFrom(
                            backgroundColor: Colors.black,
                            shape: CircleBorder(),
                          ),
                          onPressed: () {},
                          icon: Icon(
                            Icons.edit,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Center(
                  child: Text(
                    "Mike tails",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff000000),
                      fontFamily: "Roboto",
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
                  child: TextFormField(
                    controller: nameController,
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      prefixIcon: Icon(Icons.person),
                      hintText: "Mike tails",
                      hintStyle: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff000000),
                        fontFamily: "Roboto",
                      ),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: IconButton(
                            style: IconButton.styleFrom(
                              backgroundColor: Colors.grey.shade500,
                              shape: CircleBorder(),
                            ),
                            onPressed: () {},
                            icon: Icon(Icons.edit)),
                      ),
                      filled: true,
                      fillColor: Color(0xffD9D9D9),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(35),
                      ),
                    ),
                    cursorColor: Colors.black,
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
                  child: TextFormField(
                    controller: nameController,
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      prefixIcon: Icon(Icons.person_pin_circle_outlined),
                      hintText: "Love the cuteness",
                      hintStyle: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff000000),
                        fontFamily: "Roboto",
                      ),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: IconButton(
                            style: IconButton.styleFrom(
                              backgroundColor: Colors.grey.shade500,
                              shape: CircleBorder(),
                            ),
                            onPressed: () {},
                            icon: Icon(Icons.edit)),
                      ),
                      filled: true,
                      fillColor: Color(0xffD9D9D9),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(35),
                      ),
                    ),
                    cursorColor: Colors.black,
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
                  child: TextFormField(
                    controller: nameController,
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      prefixIcon: Icon(Icons.email),
                      hintText: "mike@gmail.com",
                      hintStyle: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff000000),
                        fontFamily: "Roboto",
                      ),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: IconButton(
                            style: IconButton.styleFrom(
                              backgroundColor: Colors.grey.shade500,
                              shape: CircleBorder(),
                            ),
                            onPressed: () {},
                            icon: Icon(Icons.edit)),
                      ),
                      filled: true,
                      fillColor: Color(0xffD9D9D9),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(35),
                      ),
                    ),
                    cursorColor: Colors.black,
                  ),
                ),
                SizedBox(height: 50),
                Align(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        Get.to(() => HomeScreen());
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff1CBDC8),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18)),
                        fixedSize: Size(330, 50)),
                    child: Text(
                      "Update Profile",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                        fontFamily: "Roboto",
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
