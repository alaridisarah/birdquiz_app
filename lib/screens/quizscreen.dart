import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class quizscreen extends StatelessWidget {
  const quizscreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screen_size = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(children: [
      Container(
        // Background image
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/Background2.png"),
            fit: BoxFit.fill,
          ),
        ),
      ),
      SingleChildScrollView(
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.fromLTRB(25, 20, 15, 0),
                child: Row(
                  children: [
                    Text(
                      "3",
                      style: TextStyle(
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                          fontSize: 20),
                    ),
                    Text(
                      "   /   ",
                      style: TextStyle(
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 13),
                    ),
                    Text(
                      "10",
                      style: TextStyle(
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20),
                    ),
                    SizedBox(width: 15),
                    SizedBox(
                      height: 50,
                      child: VerticalDivider(
                        thickness: 1.5,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(width: 15),
                    Text("Quiz Category",
                        style: TextStyle(
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 20)),
                    SizedBox(width: 15),
                    Image.asset(
                      "assets/logo.png",
                      height: screen_size.height * 0.20,
                      width: screen_size.width * 0.15,
                    )
                  ],
                )),
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 0, 15, 0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Questions",
                    style: TextStyle(
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 14),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ]));
  }
}
