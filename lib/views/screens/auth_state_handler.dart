import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ug_chat_app/views/screens/chats_screen.dart';
import 'package:ug_chat_app/views/screens/login_screen.dart';

class AuthStateHandler extends StatelessWidget {
  const AuthStateHandler({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (_, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator(
              color: Colors.black,
            );
          } else if (snapshot.hasError) {
            return Center(child: Text("Error"));
          } else if (snapshot.hasData) {
            return ChatsScreen();
          } else {
            return LoginScreen();
          }
        },
      ),
    );
  }
}
