
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class WelcomeText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      "Welcome to Flutter!",
      style: TextStyle(fontSize: 24),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful & Stateless - 24WH1A05BT"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            WelcomeText(),
            SizedBox(height: 30),
            Text(
              isOn ? "ON" : "OFF",
              style: TextStyle(fontSize: 25),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  isOn = !isOn;
                });
              },
              child: Text("Change State"),
            ),
          ],
        ),
      ),
    );
  }
}

-------------------------



import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SettingsPage(),
  ));
}

class SettingsPage extends StatefulWidget {
  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool darkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkMode ? Colors.black : Colors.white,
      appBar: AppBar(
        title: Text("setState - 24WH1A05BT"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              darkMode ? "Dark Mode" : "Light Mode",
              style: TextStyle(
                fontSize: 25,
                color: darkMode ? Colors.white : Colors.black,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  darkMode = !darkMode;
                });
              },
              child: Text("Change Theme"),
            ),
          ],
        ),
      ),
    );
  }
}

----------------------
Using Provider


import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Counter(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: CounterPage(),
      ),
    ),
  );
}

class Counter extends ChangeNotifier {
  int count = 0;

  void increase() {
    count++;
    notifyListeners();
  }
}

class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider - 24WH1A05BT"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "${context.watch<Counter>().count}",
              style: TextStyle(fontSize: 40),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                context.read<Counter>().increase();
              },
              child: Text("Increase"),
            ),
          ],
        ),
      ),
    );
  }
}

flutter pub add provider
