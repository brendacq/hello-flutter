import 'package:flutter/material.dart';
import 'package:hello_app/dashboard/screens/counter_screen.dart';

class EnterNumber extends StatelessWidget {
  const EnterNumber({super.key});

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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const Counter(title: 'Counter page')));
                  },
                )
              ]),
        ));
  }
}
