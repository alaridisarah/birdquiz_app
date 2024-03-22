import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:quiz_app/screens/category_screen.dart';
import 'package:quiz_app/utils/global_variable.dart';

class loginscreen extends StatelessWidget {
  loginscreen({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            // Background image
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/background1.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.25,
                    ),
                    SizedBox(
                      height: 110,
                      width: 110,
                      child: Image.asset("assets/logo.png"),
                    ),
                    Text(
                      "Bird",
                      style: TextStyle(
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.bold,
                        fontSize: 23,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: Text(
                        "Welcome back! Please log in to continue exploring quizzes and challenges.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: TextFormField(
                        controller: userNameController,
                        validator: (Username) {
                          if (Username!.isEmpty) {
                            return "The username must be not empty";
                          } else if (Username.length < 3) {
                            return "The username must contain 3 charchter and more!";
                          } else if (!Username.startsWith(RegExp(r'[A-Z]'))) {
                            return "The username must start with capital charchter!";
                          }
                        },
                        style: TextStyle(
                            fontFamily: "Montserrat",
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Color.fromARGB(255, 255, 255, 255),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                borderSide: BorderSide(
                                    color: Color.fromARGB(0, 0, 0, 0))),
                            labelText: 'User Name',
                            hintText: 'Enter Your Name',
                            errorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 3, color: Colors.red),
                                borderRadius: BorderRadius.circular(20))),
                      ),
                    ),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            Navigator.push(
                                context,
                                MaterialPageRoute<void>(
                                    builder: (BuildContext context) =>
                                        const categoryscreen()));
                          }
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
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
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(120, 0, 120, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset("assets/Facbook.png"),
                            Image.asset("assets/Google.png"),
                            Image.asset("assets/apple.png")
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
