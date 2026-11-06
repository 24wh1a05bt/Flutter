
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ResponsiveScreen(),
    );
  }
}

class ResponsiveScreen extends StatelessWidget {
  const ResponsiveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth >= 600) {
      // Wide Screen
      return Scaffold(
        appBar: AppBar(
          title: const Text("Wide Screen"),
          backgroundColor: Colors.green,
        ),
        body: Container(
          width: double.infinity,
          color: Colors.lightGreen,
          child: const Center(
            child: Text(
              "Wide Screen",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      );
    } else {
      // Narrow Screen
      return Scaffold(
        appBar: AppBar(
          title: const Text("Narrow Screen"),
          backgroundColor: Colors.blue,
        ),
        body: Container(
          width: double.infinity,
          color: Colors.lightBlueAccent,
          child: const Center(
            child: Text(
              "Narrow Screen",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      );
    }
  }
}
