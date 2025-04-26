import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ug_chat_app/controllers/auth_controller.dart';
import 'package:ug_chat_app/custom_text_field.dart';
import 'package:ug_chat_app/views/screens/chats_screen.dart';
import 'package:ug_chat_app/views/screens/forgotpassword_screen.dart';
import 'package:ug_chat_app/views/screens/home_screen.dart';
import 'package:ug_chat_app/views/screens/signin_screen.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  var controller = Get.put(
    AuthController(),
  );
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

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
                  child: Container(
                    margin: EdgeInsets.only(top: 60),
                    child: Image.asset(
                      "assets/images/Group 10.png",
                      height: 100,
                      width: 100,
                    ),
                  ),
                ),
                Text(
                  "WELCOME",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w800,
                    color: Color(0xff1CBDC8),
                    fontFamily: "Roboto",
                  ),
                ),
                Text(
                  "Please Sign-in to continue",
                  style: TextStyle(
                    fontSize: 9,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff6B6B6B),
                    fontFamily: "Roboto",
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Divider(
                    color: Color(0xff1CBDC8),
                  ),
                ),
                SizedBox(height: 15),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff1CBDC8),
                        fontFamily: "Roboto",
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: CustomTextField(
                    controller: controller.emailNameController,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    labelText: "ug@gmail.com",
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 17,
                      color: Color(0xff88B2B5),
                      fontFamily: "Roboto",
                    ),
                    validator: (newValue) {
                      if (newValue == null || newValue.isEmpty) {
                        return "Please enter your Email";
                      } else {
                        return null;
                      }
                    },
                    // hinText: "Urvit Gehlot",
                    // hintStyle:
                    //TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    cursorColor: Color(0xff88B2B5),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: CustomTextField(
                    controller: controller.passwordNameController,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    labelText: "Password",
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 17,
                      color: Color(0xff88B2B5),
                      fontFamily: "Roboto",
                    ),
                    //border: InputBorder.none,
                    // hinText: "Urvit Gehlot",
                    // hintStyle:
                    //TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    cursorColor: Color(0xff88B2B5),
                    validator: (newValue) {
                      if (newValue == null || newValue.isEmpty) {
                        return "Please enter your Paasword";
                      } else if (newValue.length < 6) {
                        return "Please Password characters more then Six";
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                //Padding(
                // padding: const EdgeInsets.symmetric(horizontal: 35),
                // child: Divider(
                // color: Color(0xff1CBDC8),
                //),
                //),
                Padding(
                  padding: const EdgeInsets.only(left: 210, top: 5),
                  child: GestureDetector(
                    onTap: () {
                      Get.to(
                        () => ForgotpasswordScreen(),
                      );
                    },
                    child: Text(
                      "Forget Password",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff1CBDC8),
                        fontFamily: "Roboto",
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/g.png",
                      height: 60,
                      width: 45,
                    ),
                    Text(
                      " Sign-in with Google",
                      style: TextStyle(
                        fontFamily: "Roboto",
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff1CBDC8),
                      ),
                    )
                  ],
                ),

                SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      controller.LogInAccount(
                        email: controller.emailNameController.text,
                        password: controller.passwordNameController.text,
                      );
                      Get.to(() => HomeScreen());
                    }
                  },
                  child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      decoration: BoxDecoration(
                          color: Color(0xff1CBDC8),
                          borderRadius: BorderRadius.circular(100)),
                      child: Obx(() {
                        return controller.isLoading.value
                            ? CircularProgressIndicator(
                                color: Colors.white,
                              )
                            : Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.black,
                                size: 25,
                              );
                      })),
                ),
                SizedBox(height: 10),
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
                      "SignIn with Google",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                        fontFamily: "Roboto",
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Center(
                  child: RichText(
                    text: TextSpan(
                      text: "Don’t have an account?",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff6B6B6B),
                      ),
                      children: [
                        TextSpan(
                          text: " LogIn",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff1CBDC8),
                            fontFamily: "Roboto",
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Get.to(() => SigninScreen());
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
