import 'package:flutter/material.dart';
class DeetsScreen extends StatelessWidget {
  final String recipe;
  const DeetsScreen({super.key, required this.recipe});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$recipe Detail'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Ingredients for $recipe:',
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.normal),
            ),
            const SizedBox(height: 10),
            const Text('Ingredients:\n\n'),
            const SizedBox(height: 20),
            const Text(
              'Instructions:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text('Instruction to make/ Instrucciones para hacer $recipe.'),
          ],
        ),
      ),
    );
  }
}
