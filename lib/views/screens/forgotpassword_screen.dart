import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ug_chat_app/controllers/auth_controller.dart';
import 'package:ug_chat_app/custom_text_field.dart';
import 'package:ug_chat_app/views/screens/login_screen.dart';

class ForgotpasswordScreen extends StatelessWidget {
  ForgotpasswordScreen({super.key});
  var controller = Get.put(
    AuthController(),
  );
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0xffDDE6E7),
      appBar: AppBar(
        // backgroundColor: Color(0xffDDE6E7),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back,
            size: 25,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    margin: EdgeInsets.only(top: 60),
                    child: Image.asset(
                      "assets/images/Group 10.png",
                      height: 100,
                      width: 100,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 20, left: 20),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Forget Password",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff1CBDC8),
                        fontFamily: "Roboto",
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: CustomTextField(
                    controller: controller.forgetPasswordNameController,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    labelText: "Email",
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
                        return "Please enter your correct passward";
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
                SizedBox(height: 50),

                Align(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        controller.forgotPassword();
                        Get.offAll(() => LoginScreen());
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff1CBDC8),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18)),
                        fixedSize: Size(330, 55)),
                    child: Obx(
                      () => controller.isLoading.value
                          ? CircularProgressIndicator(color: Colors.white)
                          : Text(
                              "Send Email",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w800,
                                color: Colors.white,
                                fontFamily: "Roboto",
                              ),
                            ),
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
