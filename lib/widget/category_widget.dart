import 'package:flutter/material.dart';
import 'package:quiz_app/screens/quiz_screen.dart';

Widget Category_widget(
    Color color, String category, var screen_size, List question, context) {
  return Container(
      color: color,
      height: screen_size.height * 1 / 3,
      width: screen_size.width,
      child: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute<void>(
                builder: (BuildContext context) => quizscreen(
                    questionsAndAnswersList: question, category: category),
              ),
            );
          },
          child: Text(
            category,
            style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          )));
}
