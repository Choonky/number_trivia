import 'package:flutter/material.dart';

class TriviaDescription extends StatelessWidget {
  const TriviaDescription(this.description);

  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      padding: EdgeInsets.all(30.0),
      decoration: BoxDecoration(
        color: Colors.white54,
        borderRadius: BorderRadius.all(
          Radius.circular(
            10.0,
          ),
        ),
      ),
      child: Text(
        description,
        textAlign: TextAlign.center,
      ),
    );
  }
}
