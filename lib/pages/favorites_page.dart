import 'package:flutter/material.dart';
import 'package:number_trivia/widgets/trivia_description.dart';

class FavoritesPage extends StatelessWidget {
  FavoritesPage(this.favorites);

  final List<String> favorites;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favories'),
      ),
      backgroundColor: Colors.blue[100],
      body: ListView(
        children: favorites
            .map((String favorite) => TriviaDescription(favorite))
            .toList(),
      ),
    );
  }
}
