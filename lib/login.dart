import 'package:flutter/material.dart';
import 'package:genecar/register.dart';

void main() => runApp(
      const MaterialApp(
        home: Login(),
      ),
    );

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Genecar'),
        backgroundColor: const Color.fromARGB(255, 253, 216, 53),
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

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            const Center(
              child: Image(
                width: 250.0,
                height: 140.0,
                image: AssetImage('assets/logo_car.png'),
              ),
            ),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Zaloguj się',
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 196, 0),
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                )),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                cursorColor: const Color.fromARGB(255, 255, 196, 0),
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
                cursorColor: const Color.fromARGB(255, 255, 196, 0),
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
            const SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: () {
                //forgot password screen
              },
              child: const Text(
                'Zapomniałem hasła',
                style: TextStyle(color: Color.fromARGB(255, 109, 109, 109)),
              ),
            ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith(
                          (color) => const Color.fromARGB(255, 253, 216, 53))),
                  child: const Text('Zaloguj się'),
                  onPressed: () {},
                )),
            Row(
              children: <Widget>[
                // ignore: prefer_const_constructors
                SizedBox(
                  height: 100,
                ),
                const Text('Nie posiadasz konta?'),
                TextButton(
                  child: const Text(
                    'Zarejestruj się',
                    style: TextStyle(
                        fontSize: 20, color: Color.fromARGB(255, 255, 196, 0)),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Register()),
                    );
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        ));
  }
}
