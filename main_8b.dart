
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: AnimationDemo(),
    debugShowCheckedModeBanner: false,
  ));
}

class AnimationDemo extends StatefulWidget {
  const AnimationDemo({super.key});

  @override
  State<AnimationDemo> createState() => _AnimationDemoState();
}

class _AnimationDemoState extends State<AnimationDemo> {
  double opacity = 1;
  double position = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fade and Slide Animation"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            AnimatedContainer(
              duration: const Duration(seconds: 1),
              transform: Matrix4.translationValues(position, 0, 0),
              child: AnimatedOpacity(
                opacity: opacity,
                duration: const Duration(seconds: 1),
                child: Container(
                  height: 120,
                  width: 120,
                  color: Colors.blue,
                  child: const Center(
                    child: Text(
                      "Flutter",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 30),

            ElevatedButton(
              onPressed: () {
                setState(() {
                  opacity = opacity == 1 ? 0 : 1;
                });
              },
              child: const Text("Fade Animation"),
            ),

            ElevatedButton(
              onPressed: () {
                setState(() {
                  position = position == 0 ? 100 : 0;
                });
              },
              child: const Text("Slide Animation"),
            ),
          ],
        ),
      ),
    );
  }
}
