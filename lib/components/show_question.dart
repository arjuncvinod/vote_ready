import 'package:flutter/material.dart';
import 'dart:math'; // Import for Random class
import 'result.dart';

void showQuestionPopup(
    BuildContext context,
    String question,
    String crt_ans,
    String wrg_ans1,
    String wrg_ans2,
    String reason,
    String details,
    level,
    ) {
  List<String> options = [
    crt_ans,
    wrg_ans1,
    wrg_ans2,
  ];

  options.shuffle();
  String correctAnswer = options[Random().nextInt(options.length)];

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Colors.white,
        content: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  '$question',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    if (options[0] == crt_ans) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RightAnswerPage(correctAnswer: crt_ans, reason: reason, details: details, level: level),
                        ),
                      );
                    } else {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => WrongAnswerPage(correctAnswer: crt_ans, reason: reason, details: details, level: level),
                        ),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent, // Button color
                    padding: const EdgeInsets.all(16.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: Text(
                    options[0],
                    style: TextStyle(fontSize: 18.0),
                  ),
                ),
                const SizedBox(height: 12.0),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    if (options[1] == crt_ans) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RightAnswerPage(correctAnswer: crt_ans, reason: reason, details: details, level: level),
                        ),
                      );
                    } else {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => WrongAnswerPage(correctAnswer: crt_ans, reason: reason, details: details, level: level),
                        ),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent, // Button color
                    padding: const EdgeInsets.all(16.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: Text(
                    options[1],
                    style: TextStyle(fontSize: 18.0),
                  ),
                ),
                const SizedBox(height: 12.0),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    if (options[2] == crt_ans) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RightAnswerPage(correctAnswer: crt_ans, reason: reason, details: details, level: level),
                        ),
                      );
                    } else {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => WrongAnswerPage(correctAnswer: crt_ans, reason: reason, details: details, level: level),
                        ),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent, // Button color
                    padding: const EdgeInsets.all(16.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: Text(
                    options[2],
                    style: TextStyle(fontSize: 18.0),
                  ),
                ),
                const SizedBox(height: 12.0),
              ],
            ),
          ),
        ),
      );
    },
  );
}