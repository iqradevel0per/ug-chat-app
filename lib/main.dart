import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ug_chat_app/views/screens/chats_screen.dart';
import 'package:ug_chat_app/views/screens/editprofile_screen.dart';
import 'package:ug_chat_app/views/screens/forgotpassword_screen.dart';
import 'package:ug_chat_app/views/screens/getstarted_screenn.dart';
import 'package:ug_chat_app/views/screens/login_screen.dart';
import 'package:ug_chat_app/views/screens/settings_screen.dart';
import 'package:ug_chat_app/views/screens/signin_screen.dart';
import 'package:ug_chat_app/views/screens/write_a_msg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: WriteAMsg(),
    );
  }
}
