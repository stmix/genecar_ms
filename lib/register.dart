import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:genecar/login.dart';

void main() => runApp(
      MaterialApp(
        home: Register(),
      ),
    );

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Genecar'),
        backgroundColor: Color.fromARGB(255, 253, 216, 53),
      ),
      body: const MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

final _email = TextEditingController();
final _repeatPassword = TextEditingController();

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Center(
              child: Image(
                width: 250.0,
                height: 130.0,
                image: AssetImage('assets/logo_car.png'),
              ),
            ),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Zarejestruj się',
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 196, 0),
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                )),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                cursorColor: Color.fromARGB(255, 255, 196, 0),
                controller: nameController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 255, 196, 0))),
                    labelText: 'Login',
                    labelStyle: TextStyle(color: Colors.black)),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                cursorColor: Color.fromARGB(255, 255, 196, 0),
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 255, 196, 0))),
                  labelText: 'Hasło',
                  labelStyle: TextStyle(color: Colors.black),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                cursorColor: Color.fromARGB(255, 255, 196, 0),
                obscureText: true,
                controller: _repeatPassword,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 255, 196, 0))),
                    labelText: 'Powtórz hasło',
                    labelStyle: TextStyle(color: Colors.black)),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                cursorColor: Color.fromARGB(255, 255, 196, 0),
                controller: _email,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 255, 196, 0))),
                    labelText: 'E-mail',
                    labelStyle: TextStyle(color: Colors.black)),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith(
                          (color) => Color.fromARGB(255, 253, 216, 53))),
                  child: const Text('Zarejestruj się'),
                  onPressed: () {
                    print(nameController.text);
                    print(passwordController.text);
                  },
                )),
          ],
        ));
  }
}
