import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:quiz_app/data/question_with_score.dart';
import 'package:quiz_app/screens/quiz_screen.dart';
import 'package:quiz_app/widget/category_widget.dart';

// Color : 1. Color.fromRGBO(188, 105, 216, 1.0)
// 2. fromRGBO(227, 251, 251, 1)
// 3. fromRGBO(75, 99, 246, 1)
// 4. fromRGBO(77, 44, 9, 1)

class categoryscreen extends StatelessWidget {
  const categoryscreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screen_size = MediaQuery.of(context).size;

    return Scaffold(
        body: Center(
      child: Column(children: [
        Category_widget(Color.fromRGBO(188, 105, 216, 1.0), "Programming quiz",
            screen_size, programmingQuizQuestionsAndAnswers, context),
        Category_widget(Color.fromRGBO(227, 251, 251, 1), "History Quiz",
            screen_size, historyQuizQuestionsAndAnswers, context),
        Category_widget(Color.fromRGBO(75, 99, 246, 1), "Sport Quiz",
            screen_size, sportsQuizQuestionsAndAnswers, context),
      ]),
    ));
  }
}
