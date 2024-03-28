import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:quiz_app/screens/category_screen.dart';
import 'package:quiz_app/screens/quiz_screen.dart';
import 'package:quiz_app/utils/global_variable.dart';

class scorescreen extends StatelessWidget {
  int? score;
  num? totalqs;
  final List? question;
  final String? category;
  scorescreen(
      {super.key, this.totalqs, this.score, this.category, this.question});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      // Background image
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/background1.png"), fit: BoxFit.cover)),
      child: Center(
          child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.40,
          ),
          Text(
            "Welcome again ${userNameController.text}, You doing greate \n Your score is:",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: "Montserrat",
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text("$score / $totalqs"),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                            builder: (BuildContext context) =>
                                const categoryscreen()));
                  },
                  child: Text(
                    "Home",
                    style: TextStyle(
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  style: ButtonStyle(
                      side: MaterialStateProperty.all<BorderSide>(BorderSide(
                        color: Color.fromARGB(255, 140, 139, 139),
                        width: 0.5,
                      )),
                      overlayColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(255, 255, 255, 255)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0))),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue)),
                ),
                SizedBox(
                  width: 15,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) => quizscreen(
                            questionsAndAnswersList: question,
                            category: category),
                      ),
                    );
                  },
                  child: Text(
                    "Play again",
                    style: TextStyle(
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  style: ButtonStyle(
                      side: MaterialStateProperty.all<BorderSide>(BorderSide(
                        color: Color.fromARGB(255, 140, 139, 139),
                        width: 0.5,
                      )),
                      overlayColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(255, 255, 255, 255)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0))),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue)),
                )
              ],
            ),
          )
        ],
      )),
    ));
  }
}
