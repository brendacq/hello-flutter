import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({Key? key, required this.title, required this.initialNumber})
      : super(key: key);

  final String title;
  final int initialNumber;

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  dynamic _counter;

  @override
  void initState() {
    super.initState();
    _counter = widget.initialNumber;
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: _incrementCounter,
                  tooltip: 'Increment',
                  child: const Icon(Icons.add),
                ),
                FloatingActionButton(
                    onPressed: _decrementCounter,
                    tooltip: 'Decrement',
                    child: const Icon(Icons.remove))
              ],
            ),
            Column(
              children: <Widget>[
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Go back'))
              ],
            )
          ],
        )),
      );
}
