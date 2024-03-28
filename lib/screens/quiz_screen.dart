import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:quiz_app/screens/category_screen.dart';
import 'package:quiz_app/screens/score_screen.dart';

class quizscreen extends StatefulWidget {
  final List? questionsAndAnswersList;
  final String? category;

  const quizscreen({super.key, this.questionsAndAnswersList, this.category});

  @override
  State<quizscreen> createState() => _quizscreenState();
}

class _quizscreenState extends State<quizscreen> {
  int _currentIndex = 0;
  int _score = 0;
  bool showWidgetOne = true;
  List hint = [];

  @override
  Widget build(BuildContext context) {
    var screen_size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
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
                          "${_currentIndex + 1} /  ${widget.questionsAndAnswersList!.length}",
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
                        Text("${widget.category}",
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
                      widget.questionsAndAnswersList![_currentIndex]["ques"],
                      style: TextStyle(
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 125, 87, 87),
                        fontSize: 15,
                      )),
                ),
                Padding(padding: const EdgeInsets.fromLTRB(25, 0, 15, 0)),
                for (int i = 0;
                    i <
                        widget
                            .questionsAndAnswersList![_currentIndex]["answers"]
                            .length;
                    i++)
                  ElevatedButton(
                    onPressed: () {
                      _score = _score +
                          (widget.questionsAndAnswersList![_currentIndex]
                              ["scores"][i]) as int;
                      // print(_score);
                      if ((_currentIndex + 1) <
                          widget.questionsAndAnswersList!.length) {
                        setState(() {
                          _currentIndex++;
                        });
                      } else {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute<void>(
                                builder: (BuildContext context) => scorescreen(
                                    totalqs:
                                        widget.questionsAndAnswersList!.length,
                                    score: _score,
                                    category: widget.category,
                                    question: widget.questionsAndAnswersList)),
                            ((route) => false));
                      }
                    },
                    child: Text(
                      widget.questionsAndAnswersList![_currentIndex]["answers"]
                          [i],
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
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          showWidgetOne =
                              false; // Change state to show the second widget
                        });
                      },
                      child: Row(
                        children: [
                          Icon(Icons.lightbulb, color: Colors.yellow),
                          Text(
                            "Hint",
                            style: TextStyle(
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )
                        ],
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
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.blue),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.blue)),
                    ),
                  ],
                ),
                if (!showWidgetOne)
                  Text(
                    textAlign: TextAlign.center,
                    "These two answer is not correct: ${hints(widget.questionsAndAnswersList![_currentIndex]["answers"], widget.questionsAndAnswersList![_currentIndex]["scores"])}",
                    style: TextStyle(
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 88, 23, 18),
                        fontSize: 12),
                  ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.18),
                ElevatedButton(
                  onPressed: () => showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: const Text('End the quiz'),
                      content:
                          const Text('Are you sure you want to end the quiz?'),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute<void>(
                                    builder: (BuildContext context) =>
                                        const categoryscreen()));
                          },
                          child: const Text('YES!'),
                        ),
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'Cancel'),
                          child: const Text('cancel'),
                        ),
                      ],
                    ),
                  ),
                  child: Text(
                    "End the Quiz",
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
              ],
            )),
          ],
        ),
      ),
    );
  }

  String? hints(List answers, List scores) {
    String ans = "";
    int count = 0;
    for (int i = 0; i < answers.length; i++) {
      if (count < 2) {
        if (scores[i] == 0) {
          count++;

          ans = ans + "\n- ${answers[i]} ";
        }
      }
    }
    showWidgetOne = true;
    return ans;
  }
}
