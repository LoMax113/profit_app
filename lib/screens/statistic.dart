import 'package:flutter/material.dart';

class statistic extends StatefulWidget {
  const statistic({Key? key}) : super(key: key);

  @override
  _statisticState createState() => _statisticState();
}

class _statisticState extends State<statistic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text(
          'Statistic',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
