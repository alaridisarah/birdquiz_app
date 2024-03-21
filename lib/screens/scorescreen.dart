import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class scorescreen extends StatelessWidget {
  const scorescreen({super.key});

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
            "Wellcome Sarah, You doing greate \n Your score is:",
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
          Text("8 / 10"),
          SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: () {},
            child: Text("Play Again",
                style: TextStyle(
                    decoration: TextDecoration.underline, color: Colors.white)),
          )
        ],
      )),
    ));
  }
}
