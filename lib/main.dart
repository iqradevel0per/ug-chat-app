import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ug_chat_app/firebase_options.dart';
import 'package:ug_chat_app/views/screens/auth_state_handler.dart';
import 'package:ug_chat_app/views/screens/conversation_screen.dart';
import 'package:ug_chat_app/views/screens/home_screen.dart';
import 'package:ug_chat_app/views/screens/getstarted_screenn.dart';
import 'package:ug_chat_app/views/screens/login_screen.dart';
import 'package:ug_chat_app/views/screens/signin_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
      home: GetStartedScreen(),
    );
  }
}
