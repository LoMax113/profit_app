import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

int money = 0;

void _moneyplus() {
  money = money + 100;
}

void _moneyminus() {
  money = money - 100;
}

void _moneyfinish() {
  money = 0;
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text(
          'Home',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
            margin: const EdgeInsets.fromLTRB(32, 16, 32, 16),
            child: Column(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.fromLTRB(32, 16, 32, 16),
                  child: const Text(
                    'Profit',
                    style: TextStyle(fontSize: 32),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(1, 0, 1, 8),
                  child: Text(
                    '$money',
                    style: const TextStyle(
                        fontSize: 24, fontStyle: FontStyle.italic),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: const [
          FloatingActionButton(
            child: Icon(Icons.attach_money_outlined),
            onPressed: _moneyplus,
            heroTag: null,
          ),
          SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            child: Icon(Icons.money_off_outlined),
            onPressed: _moneyminus,
            heroTag: null,
          ),
          SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            child: Icon(Icons.check_box_outlined),
            onPressed: _moneyfinish,
            heroTag: null,
          )
        ],
      ),
    );
  }
}
