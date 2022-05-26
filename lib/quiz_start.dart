import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:genecar/blog.dart';
import 'package:genecar/login.dart';

void main() => runApp(
      MaterialApp(
        home: QuizStart(),
      ),
    );

class QuizStart extends StatefulWidget {
  @override
  _QuizStartState createState() => _QuizStartState();
}

class _QuizStartState extends State<QuizStart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Znajdź auto'),
        backgroundColor: Color.fromARGB(255, 253, 216, 53),
      ),
      body: Column(
        children: [
          Image(
            image: AssetImage('assets/logo_car.png'),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              'Znajdź',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Text(
              ' idealny ',
              style: TextStyle(
                  color: Colors.yellow[600],
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'samochód',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              'dla Twoich potrzeb',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ]),
          SizedBox(
            height: 20,
          ),
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                    'W wyniku quizu poznasz 5 samochodów,\nktóre najlepiej spełnią Twoje oczekiwania.',
                    textAlign: TextAlign.center),
              ]),
          TextButton.icon(
              style: TextButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 253, 216, 53),
                padding: EdgeInsets.fromLTRB(10, 10, 20, 10),
              ),
              label: Text(
                '',
                style: TextStyle(
                    fontSize: 30.0, color: Color.fromARGB(255, 255, 255, 255)),
              ),
              icon: Icon(
                Icons.play_arrow,
                color: Color.fromARGB(255, 255, 255, 255),
                size: 40,
              ),
              onPressed: () {}),
        ],
      ),
    );
  }
}
