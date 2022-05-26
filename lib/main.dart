import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:genecar/blog.dart';
import 'package:genecar/login.dart';
import 'package:genecar/offers.dart';
import 'package:genecar/quiz_start.dart';

void main() => runApp(
      MaterialApp(
        home: HomePage(),
      ),
    );

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
          Widget>[
        Center(
          child: Image(
            width: 250.0,
            height: 150.0,
            image: AssetImage('assets/logo_car.png'),
          ),
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Get',
                style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.w400),
              ),
              Text(
                'New',
                style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 253, 216, 53)),
              ),
              Text(
                'Car',
                style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.w400),
              )
            ],
          ),
        ),
        SizedBox(height: 30.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Center(
                  child: ButtonTheme(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    minWidth: 130.0,
                    height: 90.0,
                    child: RaisedButton(
                      color: Colors.yellow[600],
                      onPressed: () => {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => QuizStart()),
                        ),
                      },
                      child: Text(
                        'Znajdź\nauto',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(width: 30.0),
            Column(
              children: [
                Center(
                  child: ButtonTheme(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    minWidth: 130.0,
                    height: 90.0,
                    child: RaisedButton(
                      color: Colors.yellow[600],
                      onPressed: () => {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Blog()),
                        ),
                      },
                      child: Text(
                        'Blog',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 15.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Center(
                  child: ButtonTheme(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    minWidth: 130.0,
                    height: 90.0,
                    child: RaisedButton(
                      color: Colors.yellow[600],
                      onPressed: () => {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Offers()),
                        ),
                      },
                      child: Text(
                        'Oferty',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(width: 30.0),
            Column(
              children: [
                Center(
                  child: ButtonTheme(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    minWidth: 130.0,
                    height: 90.0,
                    child: RaisedButton(
                      color: Colors.yellow[600],
                      onPressed: () => {},
                      child: Text(
                        'Usługi',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 20),
        SizedBox(
          height: 70.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Masz juz konto?',
              style: TextStyle(fontSize: 16.5, fontWeight: FontWeight.w400),
            ),
            FlatButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Login()),
                  );
                },
                child: Text(
                  'Zaloguj!',
                  style: TextStyle(
                      fontSize: 16.5,
                      color: Colors.yellow[600],
                      fontWeight: FontWeight.bold),
                ))
          ],
        )
      ]),
    );
  }
}
