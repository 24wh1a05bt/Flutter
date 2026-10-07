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
  bool darkMode = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: darkMode ? Colors.blue : Colors.orange,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(darkMode ? 'Dark Mode' : 'Light Mode'),
        ),
        body: Center(
          child: SwitchListTile(
            title: const Text('Change Theme'),
            value: darkMode,
            onChanged: (value) {
              setState(() {
                darkMode = value;
              });
            },
          ),
        ),
      ),
    );
  }
}
