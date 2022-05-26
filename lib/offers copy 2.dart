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
      body: ListView.separated(
        separatorBuilder: (BuildContext context, int index) => Divider(),
        itemCount: marki.length,
        itemBuilder: (context, index) {
          return Container(
            width: 3.0,
            child: ElevatedButton(
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
            ),
          );
        },
      ),
    );
  }
}
