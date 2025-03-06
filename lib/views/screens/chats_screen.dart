import 'package:flutter/material.dart';
import 'package:ug_chat_app/custom_text_field.dart';

class ChatsScreen extends StatelessWidget {
  ChatsScreen({super.key});
  TextEditingController searchController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffDDE6E7),
      body: SafeArea(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  controller: searchController,
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                    hintText: "Search a friend",
                    helperStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 5, right: 70),
                      child: IconButton(
                        style: IconButton.styleFrom(
                          backgroundColor: Color(0xff1CBDC8),
                          shape: CircleBorder(),
                        ),
                        onPressed: () {},
                        icon: Icon(
                          Icons.search,
                          color: Colors.white,
                          weight: 100,
                        ),
                      ),
                    ),
                    //   Container(
                    //   margin: EdgeInsets.only(left: 0),
                    //   decoration: BoxDecoration(
                    //    borderRadius: BorderRadius.circular(100),
                    //    color: Color(
                    //     0xff1CBDC8,
                    //   ),
                    //  ),
                    // child: Icon(
                    //  Icons.search,
                    //  color: Colors.white,
                    //  size: 25,
                    // ),
                    // ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(35),
                    ),
                  ),
                  // scrollPadding: EdgeInsets.only(left: 80),
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                    itemCount: 8,
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: EdgeInsets.all(0),
                        margin: EdgeInsets.only(
                            top: 5, bottom: 5, right: 15, left: 15),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35),
                            border: Border.all(
                              width: 1,
                              color: Colors.black,
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
                                ))),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
