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
  'Wszystkie marki', //0
  'Audi', //1
  'BMW', //2
  'Fiat', //3
  'Ford', //4
  'Lamborghini', //5
  'Mercedes', //6
  'Opel', //7
  'Porsche', //8
  'Renault', //9
  'Skoda', //10
  'Toyota', //11
  'Volkswagen' //12
];
List<Ogloszenie> ogloszenia = [
  Ogloszenie(indeks_marki: 1, marka: 'Audi', model: 'A4 B6', cena: 12000),
  Ogloszenie(
      indeks_marki: 5, marka: 'Lamborghini', model: 'Galardo', cena: 854000),
  Ogloszenie(indeks_marki: 1, marka: 'Audi', model: 'Q7', cena: 230000),
  Ogloszenie(
      indeks_marki: 6, marka: 'Mercedes', model: 'Sprinter', cena: 520000),
  Ogloszenie(indeks_marki: 1, marka: 'Audi', model: 'A6 C6', cena: 24000),
  Ogloszenie(indeks_marki: 9, marka: 'Renault', model: 'Kadjar', cena: 5000),
  Ogloszenie(indeks_marki: 9, marka: 'Renault', model: 'Clio', cena: 90000),
  Ogloszenie(
      indeks_marki: 12, marka: 'Volkswagen', model: 'Passat', cena: 50000),
  Ogloszenie(indeks_marki: 10, marka: 'Skoda', model: 'Octavia', cena: 20000),
  Ogloszenie(indeks_marki: 11, marka: 'Toyota', model: 'Avensis', cena: 17700),
  Ogloszenie(indeks_marki: 1, marka: 'Audi', model: 'A4 B6', cena: 12000),
  Ogloszenie(
      indeks_marki: 5, marka: 'Lamborghini', model: 'Galardo', cena: 854000),
  Ogloszenie(indeks_marki: 1, marka: 'Audi', model: 'Q7', cena: 230000),
  Ogloszenie(
      indeks_marki: 6, marka: 'Mercedes', model: 'Sprinter', cena: 520000),
  Ogloszenie(indeks_marki: 1, marka: 'Audi', model: 'A6 C6', cena: 24000),
  Ogloszenie(indeks_marki: 9, marka: 'Renault', model: 'Kadjar', cena: 5000),
  Ogloszenie(indeks_marki: 9, marka: 'Renault', model: 'Clio', cena: 90000),
  Ogloszenie(
      indeks_marki: 12, marka: 'Volkswagen', model: 'Passat', cena: 50000),
  Ogloszenie(indeks_marki: 10, marka: 'Skoda', model: 'Octavia', cena: 20000),
  Ogloszenie(indeks_marki: 11, marka: 'Toyota', model: 'Avensis', cena: 17700),
  Ogloszenie(indeks_marki: 1, marka: 'Audi', model: 'A4 B6', cena: 12000),
  Ogloszenie(
      indeks_marki: 5, marka: 'Lamborghini', model: 'Galardo', cena: 854000),
  Ogloszenie(indeks_marki: 1, marka: 'Audi', model: 'Q7', cena: 230000),
  Ogloszenie(
      indeks_marki: 6, marka: 'Mercedes', model: 'Sprinter', cena: 520000),
  Ogloszenie(indeks_marki: 1, marka: 'Audi', model: 'A6 C6', cena: 24000),
  Ogloszenie(indeks_marki: 9, marka: 'Renault', model: 'Kadjar', cena: 5000),
  Ogloszenie(indeks_marki: 9, marka: 'Renault', model: 'Clio', cena: 90000),
  Ogloszenie(
      indeks_marki: 12, marka: 'Volkswagen', model: 'Passat', cena: 50000),
  Ogloszenie(indeks_marki: 10, marka: 'Skoda', model: 'Octavia', cena: 20000),
  Ogloszenie(indeks_marki: 11, marka: 'Toyota', model: 'Avensis', cena: 17700),
  Ogloszenie(indeks_marki: 1, marka: 'Audi', model: 'A4 B6', cena: 12000),
  Ogloszenie(
      indeks_marki: 5, marka: 'Lamborghini', model: 'Galardo', cena: 854000),
  Ogloszenie(indeks_marki: 1, marka: 'Audi', model: 'Q7', cena: 230000),
  Ogloszenie(
      indeks_marki: 6, marka: 'Mercedes', model: 'Sprinter', cena: 520000),
  Ogloszenie(indeks_marki: 1, marka: 'Audi', model: 'A6 C6', cena: 24000),
  Ogloszenie(indeks_marki: 9, marka: 'Renault', model: 'Kadjar', cena: 5000),
  Ogloszenie(indeks_marki: 9, marka: 'Renault', model: 'Clio', cena: 90000),
  Ogloszenie(
      indeks_marki: 12, marka: 'Volkswagen', model: 'Passat', cena: 50000),
  Ogloszenie(indeks_marki: 10, marka: 'Skoda', model: 'Octavia', cena: 20000),
  Ogloszenie(indeks_marki: 11, marka: 'Toyota', model: 'Avensis', cena: 17700),
  Ogloszenie(indeks_marki: 1, marka: 'Audi', model: 'A4 B6', cena: 12000),
  Ogloszenie(
      indeks_marki: 5, marka: 'Lamborghini', model: 'Galardo', cena: 854000),
  Ogloszenie(indeks_marki: 1, marka: 'Audi', model: 'Q7', cena: 230000),
  Ogloszenie(
      indeks_marki: 6, marka: 'Mercedes', model: 'Sprinter', cena: 520000),
  Ogloszenie(indeks_marki: 1, marka: 'Audi', model: 'A6 C6', cena: 24000),
  Ogloszenie(indeks_marki: 9, marka: 'Renault', model: 'Kadjar', cena: 5000),
  Ogloszenie(indeks_marki: 9, marka: 'Renault', model: 'Clio', cena: 90000),
  Ogloszenie(
      indeks_marki: 12, marka: 'Volkswagen', model: 'Passat', cena: 50000),
  Ogloszenie(indeks_marki: 10, marka: 'Skoda', model: 'Octavia', cena: 20000),
  Ogloszenie(indeks_marki: 11, marka: 'Toyota', model: 'Avensis', cena: 17700),
  Ogloszenie(indeks_marki: 1, marka: 'Audi', model: 'A4 B6', cena: 12000),
  Ogloszenie(
      indeks_marki: 5, marka: 'Lamborghini', model: 'Galardo', cena: 854000),
  Ogloszenie(indeks_marki: 1, marka: 'Audi', model: 'Q7', cena: 230000),
  Ogloszenie(
      indeks_marki: 6, marka: 'Mercedes', model: 'Sprinter', cena: 520000),
  Ogloszenie(indeks_marki: 1, marka: 'Audi', model: 'A6 C6', cena: 24000),
  Ogloszenie(indeks_marki: 9, marka: 'Renault', model: 'Kadjar', cena: 5000),
  Ogloszenie(indeks_marki: 9, marka: 'Renault', model: 'Clio', cena: 90000),
  Ogloszenie(
      indeks_marki: 12, marka: 'Volkswagen', model: 'Passat', cena: 50000),
  Ogloszenie(indeks_marki: 10, marka: 'Skoda', model: 'Octavia', cena: 20000),
  Ogloszenie(indeks_marki: 11, marka: 'Toyota', model: 'Avensis', cena: 17700),
  Ogloszenie(indeks_marki: 1, marka: 'Audi', model: 'A4 B6', cena: 12000),
  Ogloszenie(
      indeks_marki: 5, marka: 'Lamborghini', model: 'Galardo', cena: 854000),
  Ogloszenie(indeks_marki: 1, marka: 'Audi', model: 'Q7', cena: 230000),
  Ogloszenie(
      indeks_marki: 6, marka: 'Mercedes', model: 'Sprinter', cena: 520000),
  Ogloszenie(indeks_marki: 1, marka: 'Audi', model: 'A6 C6', cena: 24000),
  Ogloszenie(indeks_marki: 9, marka: 'Renault', model: 'Kadjar', cena: 5000),
  Ogloszenie(indeks_marki: 9, marka: 'Renault', model: 'Clio', cena: 90000),
  Ogloszenie(
      indeks_marki: 12, marka: 'Volkswagen', model: 'Passat', cena: 50000),
  Ogloszenie(indeks_marki: 10, marka: 'Skoda', model: 'Octavia', cena: 20000),
  Ogloszenie(indeks_marki: 11, marka: 'Toyota', model: 'Avensis', cena: 17700),
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
          Expanded(
            child: ListView(
              children: [
                Column(
                  children: ogloszenia
                      .map((Ogloszenie) => Text(
                            Ogloszenie.indeks_marki == pressed || pressed == 0
                                ? '${Ogloszenie.marka} - ${Ogloszenie.model} - ${Ogloszenie.cena}'
                                : "",
                            style: TextStyle(
                                fontSize: Ogloszenie.indeks_marki == pressed ||
                                        pressed == 0
                                    ? 20.0
                                    : 0.0),
                          ))
                      .toList(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
