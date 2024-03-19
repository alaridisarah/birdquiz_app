import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:quiz_app/screens/loginscreen.dart';

class splashscreen extends StatelessWidget {
  const splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            // Background image
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/background.png"),
                    fit: BoxFit.cover)),
            // Logo
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.35,
                  ),
                  SizedBox(
                      height: 110,
                      width: 110,
                      child: Image.asset("assets/logo.png")),
                  // Space between these elements
                  SizedBox(height: 25),
                  Text(
                    "Bird Quiz App",
                    style: TextStyle(
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.bold,
                      fontSize: 23,
                    ),
                  ),
                  Text(
                    "Educate and entertain with Bird.",
                    style: TextStyle(
                        fontFamily: "Montserrat",
                        fontSize: 15,
                        fontWeight: FontWeight.w100),
                  ),
                  Spacer(), // space to put the button in the bottom
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width - 25,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            side: MaterialStateProperty.all<BorderSide>(
                                BorderSide(
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
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => const loginscreen())));
                        },
                        child: Text(
                          'Start',
                          style: TextStyle(
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )));
  }
}

// logo and background : https://www.figma.com/community/file/1347094938018229290/animated-splash-screen?searchSessionId=ltwb23js-1124t2qwt22o
// For shortcuts : https://medium.com/flutter-community/flutter-ide-shortcuts-for-faster-development-2ef45c51085b
// Fonts: google fonts
