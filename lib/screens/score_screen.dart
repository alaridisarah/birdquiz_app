import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class scorescreen extends StatelessWidget {
  num? score;
  num? totalqs;
  scorescreen({super.key, this.totalqs, this.score});

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
          Text("${score} / ${totalqs}"),
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
                  onPressed: () {},
                  child: Text(
                    "Login",
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
                SizedBox(
                  width: 15,
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
