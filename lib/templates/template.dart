import 'package:flutter/material.dart';
import 'package:profit_app/screens/calendar.dart';
import 'package:profit_app/screens/home.dart';
import 'package:profit_app/screens/statistic.dart';

class Template extends StatefulWidget {
  const Template({Key? key}) : super(key: key);

  @override
  _TemplateState createState() => _TemplateState();
}

class _TemplateState extends State<Template> {
  int _index = 1;

  final screens = const [
    statistic(),
    home(),
    calendarscreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _index,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.add_chart_outlined),
            label: 'Statistic',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.feed_outlined),
            label: 'Calendar',
          ),
        ],
        iconSize: 28,
        selectedFontSize: 16,
        unselectedFontSize: 14,
        currentIndex: _index,
        onTap: (index) => setState(() => _index = index),
      ),
    );
  }
}
