import 'package:flutter/material.dart';

void main() {
  runApp(CountApp());
}

class CountApp extends StatefulWidget {
  @override
  State<CountApp> createState() => _CountAppState();
}

class _CountAppState extends State<CountApp> {
  int number = 0;

  void Reset() {
    setState(() {
      number = 0;
    });
  }

  void Tambah() {
    setState(() {
      number = number + 1;
    });
  }

  void Kurang() {
    setState(() {
      if (number == 0) {
        number = 0;
      } else {
        number = number - 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("COUNT APP"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text(
                  "-",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                onPressed: Kurang,
              ),
              Text(
                number.toString(),
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              RaisedButton(
                child: Text(
                  "+",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                onPressed: Tambah,
              ),
              RaisedButton(child: Text("Reset"), onPressed: Reset)
            ],
          ),
        ),
      ),
    );
  }
}
