import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool big = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Simple Animation'),
        ),
        body: Center(
          child: GestureDetector(
            onTap: () {
              setState(() {
                big = !big;
              });
            },
            child: AnimatedContainer(
              duration: const Duration(seconds: 1),
              width: big ? 200 : 100,
              height: big ? 200 : 100,
              color: big ? Colors.purple : Colors.blue,
              child: const Center(
                child: Text(
                  'Tap Me',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}