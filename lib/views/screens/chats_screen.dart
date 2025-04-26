import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:ug_chat_app/custom_text_field.dart';
import 'package:ug_chat_app/views/screens/write_a_msg.dart';

class ChatsScreen extends StatelessWidget {
  ChatsScreen({super.key});
  TextEditingController searchController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffDDE6E7),
      body: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  "Ug Chat App",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff1CBDC8),
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 8,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Get.to(
                        () => WriteAMsg(),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.all(0),
                      margin: EdgeInsets.only(
                          top: 5, bottom: 5, right: 15, left: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35),
                          border: Border.all(
                            width: 2,
                            color: Color.fromARGB(255, 28, 188, 200),
                          )),
                      child: ListTile(
                        contentPadding: EdgeInsets.only(
                            right: 10, top: 0, bottom: 0, left: 5),
                        leading: CircleAvatar(
                          radius: 40,
                          backgroundImage:
                              AssetImage("assets/images/Ellipse 29.png"),
                        ),
                        title: Text(
                          "Jack",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff000000),
                            fontFamily: "Roboto",
                          ),
                        ),
                        subtitle: Text(
                          "What's up man",
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff807777),
                            fontFamily: "Roboto",
                          ),
                        ),
                        trailing: TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: CircleBorder(),
                          ),
                          onPressed: () {},
                          child: Text(
                            "1",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff1CBDC8),
                              fontFamily: "Roboto",
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
