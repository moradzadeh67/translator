import 'package:flutter/material.dart';

class Second extends StatefulWidget {
  const Second({super.key});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.red,
      child: Center(
        child: Text('page2'),
      ),
    );
  }
}
