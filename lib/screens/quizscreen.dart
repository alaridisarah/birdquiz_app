import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class quizscreen extends StatelessWidget {
  const quizscreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screen_size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
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
                  padding: const EdgeInsets.fromLTRB(25, 0, 15, 0),
                  child: Row(
                    children: [
                      Text(
                        "3 / 10 \n Questions",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(width: 15),
                      SizedBox(
                        height: 30,
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
                padding: const EdgeInsets.fromLTRB(25, 0, 15, 20),
                child: Text(
                    "vjdnvjknfkjnejfkvjdnvjknfkjnejfkvjdnvjknfkjnejfkvjdnvjknfkjnejfkvjdnvjknfkjnejfkvjdnvjknfkjnejfkvjdnvjknfkjnejfkvjdnvjknfkjnejfkvjdnvjknfkjnejfkvjdnvjknfkjnejfkvjdnvjknfkjnejfkvjdnvjknfkjnejfkvjdnvjknfkjnejfkvjdnvjknfkjnejfkvjdnvjknfkjnejfk",
                    style: TextStyle(
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 15,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 0, 15, 0),
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Login",
                        style: TextStyle(
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      style: ButtonStyle(
                          side:
                              MaterialStateProperty.all<BorderSide>(BorderSide(
                            color: Color.fromARGB(255, 140, 139, 139),
                            width: 0.5,
                          )),
                          overlayColor: MaterialStateProperty.all<Color>(
                              Color.fromARGB(255, 255, 255, 255)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0))),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.blue)),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Login",
                        style: TextStyle(
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      style: ButtonStyle(
                          side:
                              MaterialStateProperty.all<BorderSide>(BorderSide(
                            color: Color.fromARGB(255, 140, 139, 139),
                            width: 0.5,
                          )),
                          overlayColor: MaterialStateProperty.all<Color>(
                              Color.fromARGB(255, 255, 255, 255)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0))),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.blue)),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ])),
    );
  }
}
