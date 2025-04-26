import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:ug_chat_app/views/screens/chats_screen.dart';
import 'package:ug_chat_app/views/screens/conversation_screen.dart';
import 'package:ug_chat_app/views/screens/settings_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int myIndex = 0;
  List myScreens = [
    ChatsScreen(),
    SettingsScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Color(0xff1CBDC8),
          onTap: (index) {
            setState(() {
              myIndex = index;
            });
          },
          currentIndex: myIndex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ]),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff1CBDC8),
        onPressed: () {
          Get.to(
            () => ConversationScreen(),
          );
        },
        child: Icon(
          Icons.add,
          color: Colors.grey.shade800,
        ),
      ),
      body: Center(
        child: myScreens[myIndex],
      ),
    );
  }
}
