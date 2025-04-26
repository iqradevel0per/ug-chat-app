import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:ug_chat_app/views/screens/chats_screen.dart';
import 'package:ug_chat_app/views/screens/home_screen.dart';
import 'package:ug_chat_app/views/screens/login_screen.dart';

class AuthController extends GetxController {
  TextEditingController emailNameController = TextEditingController();
  TextEditingController passwordNameController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController forgetPasswordNameController = TextEditingController();

  var isLoading = false.obs;

  Future<void> SignupAccount(
      {required String email, required String password}) async {
    isLoading.value = true;
    try {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((value) {
        //  Get.to(
        //   () => HomeScreen(),
        // );
        print("Account created successfully");
      });

      isLoading.value = false;
      emailNameController.clear();
      passwordNameController.clear();
    } on FirebaseException catch (error) {
      print("Error:${error.message}");
      isLoading.value = false;
    }
  }

  Future<void> LogInAccount(
      {required String email, required String password}) async {
    isLoading.value = true;
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email.trim(), password: password.trim());
      //Get.to(() => HomeScreen());

      isLoading.value = false;
      emailNameController.clear();
      passwordNameController.clear();
    } on FirebaseException catch (error) {
      print("Error:${error.message}");
      isLoading.value = false;
    }
  }

  Future<void> forgotPassword() async {
    await FirebaseAuth.instance
        .sendPasswordResetEmail(email: emailNameController.text)
        .then((value) {
      Get.offAll(() => LoginScreen());
    });
  }

  Future<void> loginWithGoogle() async {
    try {
      final googleSignIn = await GoogleSignIn().signIn();
      final googleUser = await googleSignIn?.authentication;
      final credential = await GoogleAuthProvider.credential(
        accessToken: googleUser?.accessToken,
        idToken: googleUser?.idToken,
      );
      final UserCredential =
          await FirebaseAuth.instance.signInWithCredential(credential);
    } catch (e) {
      print(e);
    }
  }

  Future<void> signOutMethod() async {
    final googleSignIn = await GoogleSignIn();
    try {
      await FirebaseAuth.instance.signOut();
      await googleSignIn.signOut();
    } on FirebaseAuthException catch (e) {
      print(e);
    }
  }
}
