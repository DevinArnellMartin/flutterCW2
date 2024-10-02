import 'package:flutter/material.dart';
import 'detail.dart';

class Home extends StatelessWidget {
  final List<String> recipes = [
    'Jerk Chicken',
    'Curry Shrimp',
    'Lorem',
    'Ipsum',
    'Ackee & Saltfish',
  ];

  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recipes'),
      ),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, idx) {
          return ListTile(
            title: Text(recipes[idx]),
            onTap: () {
          
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DeetsScreen(recipe: recipes[idx]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
