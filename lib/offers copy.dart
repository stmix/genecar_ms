import 'package:flutter/material.dart';
import 'dart:ui';

void main() => runApp(
      const MaterialApp(
        home: Offers(),
      ),
    );

class Offers extends StatefulWidget {
  const Offers({Key? key}) : super(key: key);

  @override
  _OffersState createState() => _OffersState();
}

int pressed = 0;
List<String> marki = ['Audi', 'BMW', 'Skoda', 'Mercedes'];

class _OffersState extends State<Offers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow[600],
        title: const Text('Oferty'),
      ),
      body: Column(children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        pressed = 1;
                      });
                    },
                    style: pressed == 1
                        ? ElevatedButton.styleFrom(primary: Colors.grey[200])
                        : ElevatedButton.styleFrom(primary: Colors.amber),
                    child: Text(
                      'Audi',
                      style: pressed == 1
                          ? TextStyle(color: Colors.black)
                          : TextStyle(color: Colors.white),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        pressed = 2;
                      });
                    },
                    style: pressed == 2
                        ? ElevatedButton.styleFrom(primary: Colors.grey[200])
                        : ElevatedButton.styleFrom(primary: Colors.amber),
                    child: Text(
                      'BMW',
                      style: pressed == 2
                          ? TextStyle(color: Colors.black)
                          : TextStyle(color: Colors.white),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        pressed = 3;
                      });
                    },
                    style: pressed == 3
                        ? ElevatedButton.styleFrom(primary: Colors.grey[200])
                        : ElevatedButton.styleFrom(primary: Colors.amber),
                    child: Text(
                      'Skoda',
                      style: pressed == 3
                          ? TextStyle(color: Colors.black)
                          : TextStyle(color: Colors.white),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        pressed = 4;
                      });
                    },
                    style: pressed == 4
                        ? ElevatedButton.styleFrom(primary: Colors.grey[200])
                        : ElevatedButton.styleFrom(primary: Colors.amber),
                    child: Text(
                      'Mercedes',
                      style: pressed == 4
                          ? TextStyle(color: Colors.black)
                          : TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
              Text(marki[pressed - 1]),
            ],
          ),
        ),
      ]),
    );
  }
}
