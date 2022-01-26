import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:profit_app/screens/home.dart';

class calendarscreen extends StatefulWidget {
  const calendarscreen({Key? key}) : super(key: key);

  @override
  _calendarscreenState createState() => _calendarscreenState();
}

int year = 2022;
int month = 12;
int date = 31;

class _calendarscreenState extends State<calendarscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text(
          'Calendar',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('+ $money€'),
            trailing: Text(
              DateFormat('dd.MM.yyyy').format(
                DateTime(year, month = month - 11, date),
              ),
            ),
          ),
          ListTile(
            title: Text('+ $money€'),
            trailing: Text(
              DateFormat('dd.MM.yyyy').format(
                DateTime(year, month, date = date - 1),
              ),
            ),
          ),
          ListTile(
            title: Text('+ $money€'),
            trailing: Text(
              DateFormat('dd.MM.yyyy').format(
                DateTime(year, month, date = date - 1),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
