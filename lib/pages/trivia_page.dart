import 'package:flutter/material.dart';
import 'package:number_trivia/widgets/trivia_description.dart';
import 'package:number_trivia/widgets/trivia_title.dart';

class TriviaPage extends StatelessWidget {
  const TriviaPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Number Trivia'),
      ),
      backgroundColor: Colors.blue[100],
      body: Column(
        children: [
          TriviaTitle('4200'),
          TriviaDescription(
            '4200 is the number of standard size of a legion in the Roman Republic',
          ),
          ElevatedButton(
            onPressed: null,
            child: Text('Random Trivia'),
          ),
        ],
      ),
    );
  }
}
