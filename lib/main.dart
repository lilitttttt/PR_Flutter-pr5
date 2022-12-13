import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:pr5/screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  final SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();
  runApp(MyApp(sharedPreferences));
}

class MyApp extends StatelessWidget {
  final SharedPreferences sharedPreferences;
  MyApp(this.sharedPreferences, {super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/second': (context) =>
            Screen(count: sharedPreferences.getInt("counter") ?? 0)
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(
        sharedPreferences,
        title: 'IWD',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final SharedPreferences sharedPreferences;
  const MyHomePage(this.sharedPreferences, {super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String message = "Число";

  void _incrementCounter() async {
    setState(() {
      _counter++;
    });
    await widget.sharedPreferences.setInt("counter", _counter);
    await widget.sharedPreferences.setString("message", message);
  }

  String nowtext = "";

  @override
  void initState() {
    _counter = widget.sharedPreferences.getInt('counter') ?? 0;
    nowtext = widget.sharedPreferences.getString('message') ?? '';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              widget.sharedPreferences.getString('message') ?? '',
              style: TextStyle(fontSize: 50),
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            SizedBox(
              height: 50,
              width: 250,
              child: ElevatedButton(
                onPressed: () {
                  List<Object> SecScreen = <Object>[];
                  SecScreen.add(_counter);
                  SecScreen.add(
                      widget.sharedPreferences.getString('message') ?? '');

                  Navigator.pushNamed(context, "/second", arguments: SecScreen);
                },
                child: Text(style: TextStyle(fontSize: 20), 'Вывести значение'),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Прибавить число +1',
        child: const Icon(Icons.fiber_new),
      ),
    );
  }
}
