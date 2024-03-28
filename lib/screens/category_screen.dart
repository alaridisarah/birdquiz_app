import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:quiz_app/data/question_with_score.dart';
import 'package:quiz_app/screens/login_screen.dart';
import 'package:quiz_app/screens/quiz_screen.dart';
import 'package:quiz_app/utils/global_variable.dart';
import 'package:quiz_app/widget/category_widget.dart';

// Color : 1. Color.fromRGBO(188, 105, 216, 1.0)
// 2. fromRGBO(227, 251, 251, 1)
// 3. fromRGBO(75, 99, 246, 1)
// 4. fromRGBO(77, 44, 9, 1)

class categoryscreen extends StatelessWidget {
  const categoryscreen({super.key});
  void clearTextFields() {
    userNameController.clear();
  }

  @override
  Widget build(BuildContext context) {
    var screen_size = MediaQuery.of(context).size;

    return Scaffold(
        body: Center(
      child: Column(
        children: [
          Category_widget(Color.fromRGBO(75, 99, 246, 1), "Programming quiz",
              screen_size, programmingQuizQuestionsAndAnswers, context),
          Category_widget(Color.fromRGBO(227, 251, 251, 1), "History Quiz",
              screen_size, historyQuizQuestionsAndAnswers, context),
          Stack(children: [
            Category_widget(Color.fromRGBO(188, 105, 216, 1.0), "Sport Quiz",
                screen_size, sportsQuizQuestionsAndAnswers, context),
            Column(
              children: [
                SizedBox(
                  height: screen_size.height * 0.25,
                ),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      clearTextFields();
                      Navigator.push(
                          context,
                          MaterialPageRoute<void>(
                              builder: (BuildContext context) =>
                                  loginscreen()));
                    },
                    child: Text(
                      "Log out",
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
                  ),
                )
              ],
            ),
          ]),
        ],
      ),
    ));
  }
}
