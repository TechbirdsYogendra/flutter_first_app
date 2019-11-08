import 'package:flutter/material.dart';

// void main(List<String> args) {
//   runApp(MyApp());
// }
// or
// For only expression we can use the arrow style
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      if (questionIndex < 1) {
         questionIndex = questionIndex + 1;
      }
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "What's your favorite Color?",
      "What is favorite Cricket Player?"
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Text(questions[questionIndex]),
            RaisedButton(
              child: Text("answer 1"),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text("answer 2"),
              onPressed: () {
                print("Answer 2 is Pressed");
              },
            ),
            RaisedButton(
              child: Text("answer 3"),
              onPressed: () => print("Answer 3 is pressed"),
            ),
          ],
        ),
      ),
    );
  }
}
