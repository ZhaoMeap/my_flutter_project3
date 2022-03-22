import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const Center(
          child: MyStatelessWidget(),
        ),
      ),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: () {
                debugPrint('TextButton Click!');
              },
              child: const Text('TextButton'),
            ),

            OutlinedButton(
              onPressed: () {
                debugPrint('OutlinedButton click');
              },
              child: const Text('OutlinedButton'),
            ),

            ElevatedButton(
              onPressed: () {
                debugPrint('ElevatedButton click');
              },
              child: Text('ElevatedButton'),
            )
          ]
      )
    );
  }
}
