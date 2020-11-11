import 'package:flutter/material.dart';
import 'package:number_trivia/widgets/trivia_description.dart';
import 'package:number_trivia/widgets/trivia_title.dart';
import 'dart:math';
import 'package:http/http.dart' as http;

class TriviaPage extends StatefulWidget {
  const TriviaPage({Key key}) : super(key: key);

  @override
  _TriviaPageState createState() => _TriviaPageState();
}

class _TriviaPageState extends State<TriviaPage> {
  final Random random = Random();
  int randomNumber = 4200;

  String description =
      '4200 is the number of standard size of a legion in the Roman Republic';

  Future<void> fetchTrivia() async {
    final http.Response response =
        await http.get('http://numbersapi.com/$randomNumber');

    setState(() {
      description = response.body;
    });
  }

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
            description,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                randomNumber = random.nextInt(999);
                fetchTrivia();
              });
            },
            child: Text('Random Trivia'),
          ),
        ],
      ),
    );
  }
}
