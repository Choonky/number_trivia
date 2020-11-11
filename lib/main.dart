import 'package:flutter/material.dart';
import 'package:number_trivia/pages/trivia_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Number Trivia',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TriviaPage(),
    );
  }
}
