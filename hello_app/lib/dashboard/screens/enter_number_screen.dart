import 'package:flutter/material.dart';
import 'package:hello_app/dashboard/screens/counter_screen.dart';

class EnterNumber extends StatefulWidget {
  const EnterNumber({super.key});

  final int number = 0;

  @override
  State<EnterNumber> createState() => _EnterNumberState();
}

class _EnterNumberState extends State<EnterNumber> {
  // int enterNumber = 0;
  TextEditingController enterNumber = TextEditingController();

  void _handleChange(BuildContext context) {
    int numberToSend = int.parse(enterNumber.text);
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Counter(
                  title: 'Counter page',
                  initialNumber: numberToSend,
                )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('First Route'),
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(
                  controller: enterNumber,
                ),
                ElevatedButton(
                  child: const Text('Go back'),
                  onPressed: () {
                    Navigator.pop(
                        context); // Navigate to second route when tapped.
                  },
                ),
                ElevatedButton(
                  child: const Text('Go to the Counter'),
                  onPressed: () {
                    _handleChange(context);
                  },
                )
              ]),
        ));
  }
}
