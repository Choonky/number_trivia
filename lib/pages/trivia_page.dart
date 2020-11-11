import 'package:flutter/material.dart';
import 'package:number_trivia/widgets/trivia_description.dart';
import 'package:number_trivia/widgets/trivia_title.dart';
import 'dart:math';

class TriviaPage extends StatefulWidget {
  const TriviaPage({Key key}) : super(key: key);

  @override
  _TriviaPageState createState() => _TriviaPageState();
}

class _TriviaPageState extends State<TriviaPage> {
  final Random random = Random();
  int randomNumber = 4200;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Number Trivia'),
      ),
      backgroundColor: Colors.blue[100],
      body: Column(
        children: [
          TriviaTitle('$randomNumber'),
          TriviaDescription(
            '4200 is the number of standard size of a legion in the Roman Republic',
          ),
          ElevatedButton(
            onPressed: () {
              print(randomNumber);
              setState(() {
                randomNumber = random.nextInt(9999);
              });
            },
            child: Text('Random Trivia'),
          ),
        ],
      ),
    );
  }
}
