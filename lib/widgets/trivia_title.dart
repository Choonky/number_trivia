import 'package:flutter/material.dart';

class TriviaTitle extends StatelessWidget {
  TriviaTitle(this.title);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(
        10.0,
        20.0,
        10.0,
        0.0,
      ),
      child: Text(
        title,
        style: TextStyle(
          color: Colors.blue[900],
          fontSize: 60.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
