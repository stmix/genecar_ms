import 'package:flutter/material.dart';
import 'dart:ui';
import 'Ogloszenie.dart';

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
List<String> marki = [
  'Wszystkie marki',
  'Audi',
  'BMW',
  'Fiat',
  'Ford',
  'Lamborghini',
  'Mercedes',
  'Opel',
  'Porsche',
  'Renault',
  'Skoda',
  'Toyota',
  'Volkswagen'
];

class _OffersState extends State<Offers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow[600],
        title: const Text('Oferty'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 30.0,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                separatorBuilder: (BuildContext context, int index) =>
                    VerticalDivider(),
                itemCount: marki.length,
                itemBuilder: (context, index) {
                  return ElevatedButton(
                    onPressed: () {
                      setState(() {
                        pressed = index;
                      });
                    },
                    style: pressed == index
                        ? ElevatedButton.styleFrom(primary: Colors.grey[200])
                        : ElevatedButton.styleFrom(primary: Colors.amber),
                    child: Text(
                      marki[index],
                      style: pressed == index
                          ? TextStyle(color: Colors.black)
                          : TextStyle(color: Colors.white),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
