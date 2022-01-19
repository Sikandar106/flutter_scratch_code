import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {


    var questionList = [
      'What\'s is your favourite pornstar',
      'what\'s is your favourite position'
    ];


    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My New Flutter Project"),
        ),
        body: Column(
          children: <Widget>[
             Text(questionList[questionIndex]),
            ElevatedButton(
              onPressed: answerQuestion,
              child: const Text("Answer 1"),
            ),
            ElevatedButton(
              //anonymous function type 1
              onPressed: answerQuestion,
              child: const Text("Answer 2"),
            ),
            ElevatedButton(
              onPressed: answerQuestion,
              child: const Text("Answer 3"),
            ),
          ],
        ),
      ),
    );
  }
}
