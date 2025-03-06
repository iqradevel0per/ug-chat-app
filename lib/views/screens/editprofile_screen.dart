import 'package:flutter/material.dart';

class EditprofileScreen extends StatelessWidget {
  EditprofileScreen({super.key});
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffDDE6E7),
      appBar: AppBar(
        backgroundColor: Color(0xffDDE6E7),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back,
            size: 30,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_circle_right_sharp,
              size: 30,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Stack(
                children: [
                  Container(
                    child: Image.asset(
                      "assets/images/Ellipse 26.png",
                      height: 130,
                      width: 130,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: 90,
                      left: 95,
                    ),
                    child: IconButton(
                      style: IconButton.styleFrom(
                        backgroundColor: Colors.black,
                        shape: CircleBorder(),
                      ),
                      onPressed: () {},
                      icon: Icon(
                        Icons.edit,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: Text(
                "Mike tails",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff000000),
                  fontFamily: "Roboto",
                ),
              ),
            ),
            SizedBox(height: 10),
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 25),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xffD9D9D9),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Text(
                      "Name",
                      style: TextStyle(
                        //backgroundColor: Color(0xffD9D9D9),
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff000000),
                        fontFamily: "Roboto",
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
                  child: TextFormField(
                    controller: nameController,
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      prefixIcon: Icon(Icons.person),
                      hintText: "Mike tails",
                      hintStyle: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff000000),
                        fontFamily: "Roboto",
                      ),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: IconButton(
                            style: IconButton.styleFrom(
                              backgroundColor: Colors.grey.shade500,
                              shape: CircleBorder(),
                            ),
                            onPressed: () {},
                            icon: Icon(Icons.edit)),
                      ),
                      filled: true,
                      fillColor: Color(0xffD9D9D9),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(35),
                      ),
                    ),
                    cursorColor: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 25),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xffD9D9D9),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Text(
                      "About Me",
                      style: TextStyle(
                        //backgroundColor: Color(0xffD9D9D9),
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff000000),
                        fontFamily: "Roboto",
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
                  child: TextFormField(
                    controller: nameController,
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      prefixIcon: Icon(Icons.person_pin_circle_outlined),
                      hintText: "Love the cuteness",
                      hintStyle: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff000000),
                        fontFamily: "Roboto",
                      ),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: IconButton(
                            style: IconButton.styleFrom(
                              backgroundColor: Colors.grey.shade500,
                              shape: CircleBorder(),
                            ),
                            onPressed: () {},
                            icon: Icon(Icons.edit)),
                      ),
                      filled: true,
                      fillColor: Color(0xffD9D9D9),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(35),
                      ),
                    ),
                    cursorColor: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 25),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xffD9D9D9),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Text(
                      "Email",
                      style: TextStyle(
                        //backgroundColor: Color(0xffD9D9D9),
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff000000),
                        fontFamily: "Roboto",
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
                  child: TextFormField(
                    controller: nameController,
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      prefixIcon: Icon(Icons.email),
                      hintText: "mike@gmail.com",
                      hintStyle: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff000000),
                        fontFamily: "Roboto",
                      ),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: IconButton(
                            style: IconButton.styleFrom(
                              backgroundColor: Colors.grey.shade500,
                              shape: CircleBorder(),
                            ),
                            onPressed: () {},
                            icon: Icon(Icons.edit)),
                      ),
                      filled: true,
                      fillColor: Color(0xffD9D9D9),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(35),
                      ),
                    ),
                    cursorColor: Colors.black,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
