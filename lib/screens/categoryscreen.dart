import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

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
        Category_widget(
            Color.fromRGBO(188, 105, 216, 1.0), "History Quiz", screen_size),
        Category_widget(
            Color.fromRGBO(227, 251, 251, 1), "Science Quiz", screen_size),
        Category_widget(
            Color.fromRGBO(75, 99, 246, 1), "Sport Quiz", screen_size),
      ]),
    ));
  }

  Widget Category_widget(Color color, String category, var screen_size) {
    return Container(
        color: color,
        height: screen_size.height * 1 / 3,
        width: screen_size.width,
        child: TextButton(
            onPressed: () {},
            child: Text(
              category,
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            )));
  }
}
