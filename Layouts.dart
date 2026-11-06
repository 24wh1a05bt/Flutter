
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
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Layouts"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              const Text(
                "Column Representation",
                style: TextStyle(fontSize: 20),
              ),

              Column(
                children: [
                  Container(
                    color: Colors.red,
                    height: 40,
                    width: 100,
                    child: const Center(child: Text("One")),
                  ),
                  Container(
                    color: Colors.green,
                    height: 40,
                    width: 100,
                    child: const Center(child: Text("Two")),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              const Text(
                "Row Representation",
                style: TextStyle(fontSize: 20),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.blue,
                    height: 50,
                    width: 80,
                    child: const Center(child: Text("One")),
                  ),
                  Container(
                    color: Colors.orange,
                    height: 50,
                    width: 80,
                    child: const Center(child: Text("Two")),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              const Text(
                "Stack Representation",
                style: TextStyle(fontSize: 20),
              ),

              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 120,
                    width: 120,
                    color: Colors.purple,
                  ),
                  Container(
                    height: 70,
                    width: 70,
                    color: Colors.yellow,
                  ),
                  const Text("Stack"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
