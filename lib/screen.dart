import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screen extends StatelessWidget {
  const Screen({super.key, required this.count});
  final int count;

  @override
  Widget build(BuildContext context) {
    final arguments =
        (ModalRoute.of(context)?.settings.arguments) as List<Object>;
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          arguments[1].toString() + ': ' + arguments[0].toString(),
          style: TextStyle(fontSize: 100),
        ),
      ),
    );
  }
}
