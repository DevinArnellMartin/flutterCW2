import 'package:flutter/material.dart';
void main() {
  runApp(const RunMyApp());
}
class RunMyApp extends StatelessWidget {
  const RunMyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FadeTxt(),
    );
  }
}
class FadeTxt extends StatefulWidget {
  const FadeTxt({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _FadeTxtState createState() => _FadeTxtState();
}

class _FadeTxtState extends State<FadeTxt> {
  bool boolVis = true;

  void toggle() { //visibility 
    setState(() {
      boolVis = !boolVis;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Classwork 3'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: toggle, 
          child: AnimatedOpacity(
            opacity: boolVis ? 1.0 : 0.0,
            duration: const Duration(seconds: 4),
            curve: Curves.easeInOutCirc, 
            child: const Text(
              'Hello World, Goodbye World',
              style: TextStyle(fontSize: 28),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: toggle,
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}

