
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
    double width = MediaQuery.of(context).size.width;

    Color bgColor;
    String device;
    double fontSize;

    if (width >= 900) {
      bgColor = Colors.orange;
      device = "Desktop Screen";
      fontSize = 34;
    } else if (width >= 600) {
      bgColor = Colors.green;
      device = "Tablet Screen";
      fontSize = 28;
    } else {
      bgColor = Colors.blue;
      device = "Mobile Screen";
      fontSize = 22;
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Media Queries & Breakpoints"),
        backgroundColor: bgColor,
      ),
      body: Container(
        width: double.infinity,
        color: bgColor.withOpacity(0.3),
        child: Center(
          child: Text(
            device,
            style: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
