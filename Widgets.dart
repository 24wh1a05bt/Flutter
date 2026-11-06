TextWidget

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
          title: const Text("Text Widget"),
        ),
        body: const Center(
          child: Text(
            "Hello Flutter!",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}
------------
ImageWidget


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
      title: "Network Image Demo",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Image Widget"),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Image.network(
            'https://picsum.photos/300',
            width: 300,
            height: 300,
            fit: BoxFit.cover,
            loadingBuilder: (context, child, loadingProgress) {
              if (loadingProgress == null) return child;
              return const CircularProgressIndicator();
            },
            errorBuilder: (context, error, stackTrace) {
              return const Text(
                "Failed to load image",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.red,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
-----------
ContainerWidget


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
          title: const Text("Container Widget"),
        ),
        body: Center(
          child: Container(
            width: 200,
            height: 150,
            color: Colors.orange,
            alignment: Alignment.center,
            child: const Text(
              "Hello Flutter",
              style: TextStyle(
                fontSize: 22,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
