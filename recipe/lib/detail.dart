import 'package:flutter/material.dart';
class DeetsScreen extends StatelessWidget {
  final String recipe;
  DeetsScreen({required this.recipe});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$recipe Detail'),
      ),
      body: Padding(
        padding: EdgeInsets.all(14.2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Ingredients for $recipe:',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.normal),
            ),
            SizedBox(height: 10),
            Text('Ingredients:\n\n'),
            SizedBox(height: 20),
            Text(
              'Instructions:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text('Instruction to make/ Instrucciones para hacer $recipe.'),
          ],
        ),
      ),
    );
  }
}
