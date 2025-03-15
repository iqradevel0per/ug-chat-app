import 'dart:io';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ug_chat_app/custom_text_field.dart';
import 'package:ug_chat_app/views/screens/login_screen.dart';

class SigninScreen extends StatefulWidget {
  SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  TextEditingController emailNameController = TextEditingController();

  TextEditingController passwordNameController = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  XFile? pickedFile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              children: [
                Center(
                  child: GestureDetector(
                    onTap: () async {
                      ImagePicker picker = ImagePicker();
                      var pickImage =
                          await picker.pickImage(source: ImageSource.gallery);
                      //
                      if (pickImage != null) {
                        setState(() {
                          pickedFile = pickImage;
                        });
                      }
                    },
                    child: pickedFile == null
                        ? Container(
                            margin: EdgeInsets.only(top: 30),
                            padding: EdgeInsets.all(30),
                            decoration: BoxDecoration(
                              color: Color(0xff88B2B5),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Image.asset(
                              "assets/images/icon.png",
                              height: 80,
                              width: 80,
                            ),
                          )
                        : Container(
                            height: 80,
                            width: 80,
                            margin: EdgeInsets.only(top: 30),
                            padding: EdgeInsets.all(30),
                            decoration: BoxDecoration(
                              color: Color(0xff88B2B5),
                              borderRadius: BorderRadius.circular(100),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: FileImage(
                                  File(pickedFile!.path),
                                ),
                              ),
                            ),
                          ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: CustomTextField(
                    controller: firstNameController,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 0, vertical: 15),
                    labelText: "First Name",
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 17,
                      color: Color(0xff88B2B5),
                      fontFamily: "Roboto",
                    ),
                    hinText: "Urvit Gehlot",
                    hintStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Roboto",
                    ),
                    cursorColor: Color(0xff88B2B5),
                    validator: (newValue) {
                      if (newValue == null || newValue.isEmpty) {
                        return "Please enter your Email";
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: CustomTextField(
                    controller: lastNameController,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 0, vertical: 15),
                    labelText: "Last Name",
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 17,
                      color: Color(0xff6B6B6B),
                      fontFamily: "Roboto",
                    ),
                    hinText: "Gehlot",
                    hintStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Roboto",
                    ),
                    cursorColor: Color(0xff88B2B5),
                    validator: (newValue) {
                      if (newValue == null || newValue.isEmpty) {
                        return "Please enter your Email";
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: CustomTextField(
                    controller: emailNameController,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 0, vertical: 15),
                    labelText: "Email",
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 17,
                      color: Color(0xff6B6B6B),
                      fontFamily: "Roboto",
                    ),
                    hinText: "abc@gmail.com",
                    hintStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Roboto",
                    ),
                    cursorColor: Color(0xff88B2B5),
                    validator: (newValue) {
                      if (newValue == null || newValue.isEmpty) {
                        return "Please enter your Email";
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: CustomTextField(
                    controller: passwordNameController,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 0, vertical: 15),
                    labelText: "Password",
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 17,
                      color: Color(0xff6B6B6B),
                      fontFamily: "Roboto",
                    ),
                    hinText: ".....",
                    hintStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Roboto",
                    ),
                    cursorColor: Color(0xff88B2B5),
                    validator: (newValue) {
                      if (newValue == null || newValue.isEmpty) {
                        return "Please enter your Email";
                      } else if (newValue.length < 6) {
                        return "Please Password characters more then Six";
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                SizedBox(height: 50),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        Get.to(() => LoginScreen());
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff1CBDC8),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18)),
                        fixedSize: Size(330, 55)),
                    child: Text(
                      "Continue",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                        fontFamily: "Roboto",
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Center(
                  child: RichText(
                    text: TextSpan(
                      text: "Don’t have an account?",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff6B6B6B),
                        fontFamily: "Roboto",
                      ),
                      children: [
                        TextSpan(
                          text: " Sign In",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff1CBDC8),
                            fontFamily: "Roboto",
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Get.to(() => LoginScreen());
                            },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
