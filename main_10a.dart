main.dart:

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
          title: const Text('Text Field Testing'),
          backgroundColor: Colors.blue,
        ),
        body: const Padding(
          padding: EdgeInsets.all(20),
          child: NameInput(),
        ),
      ),
    );
  }
}

class NameInput extends StatefulWidget {
  const NameInput({super.key});

  @override
  State<NameInput> createState() => _NameInputState();
}

class _NameInputState extends State<NameInput> {
  String name = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          decoration: const InputDecoration(
            labelText: 'Enter your name',
            border: OutlineInputBorder(),
          ),
          onChanged: (value) {
            setState(() {
              name = value;
            });
          },
        ),
        const SizedBox(height: 20),
        Text('Entered name: $name'),
      ],
    );
  }
}

--------

test/widget_test.dart:


import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:unit_testing/main.dart';

void main() {
  testWidgets('TextField accepts and displays input',
      (WidgetTester tester) async {

    await tester.pumpWidget(const MyApp());

    expect(find.byType(TextField), findsOneWidget);

    expect(find.text('Enter your name'), findsOneWidget);

    await tester.enterText(
      find.byType(TextField),
      'Charvi',
    );

    await tester.pump();

    expect(find.text('Entered name: Pavani'), findsOneWidget);
  });
}
-------------

lib/main.dart


Step 3: Paste the second code into:
test/widget_test.dart


Step 4: Run the test in the terminal:
flutter test


Expected result
00:00 +1: All tests passed!
