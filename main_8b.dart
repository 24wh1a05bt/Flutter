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
      home: const AnimationPage(),
    );
  }
}

class AnimationPage extends StatefulWidget {
  const AnimationPage({super.key});

  @override
  State<AnimationPage> createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  bool fade = false;
  bool slide = false;
  bool rotate = false;
  bool scale = false;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    controller.repeat(reverse: true);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  Widget animatedBox() {
    Widget box = Container(
      width: 120,
      height: 120,
      color: Colors.blue,
      child: const Center(
        child: Text(
          'Flutter',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );

    if (fade) {
      box = FadeTransition(
        opacity: controller,
        child: box,
      );
    }

    if (slide) {
      box = SlideTransition(
        position: Tween<Offset>(
          begin: const Offset(-0.5, 0),
          end: const Offset(0.5, 0),
        ).animate(controller),
        child: box,
      );
    }

    if (rotate) {
      box = RotationTransition(
        turns: controller,
        child: box,
      );
    }

    if (scale) {
      box = ScaleTransition(
        scale: controller,
        child: box,
      );
    }

    return box;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation Types'),
      ),
      body: Column(
        children: [
          const SizedBox(height: 30),

          Expanded(
            child: Center(
              child: AnimatedBuilder(
                animation: controller,
                builder: (context, child) {
                  return animatedBox();
                },
              ),
            ),
          ),

          SwitchListTile(
            title: const Text('Fade Animation'),
            value: fade,
            onChanged: (value) {
              setState(() {
                fade = value;
              });
            },
          ),

          SwitchListTile(
            title: const Text('Slide Animation'),
            value: slide,
            onChanged: (value) {
              setState(() {
                slide = value;
              });
            },
          ),

          SwitchListTile(
            title: const Text('Rotation Animation'),
            value: rotate,
            onChanged: (value) {
              setState(() {
                rotate = value;
              });
            },
          ),

          SwitchListTile(
            title: const Text('Scale Animation'),
            value: scale,
            onChanged: (value) {
              setState(() {
                scale = value;
              });
            },
          ),

          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
