import 'package:flutter/material.dart';

void main() => runApp(
      const MaterialApp(
        home: Blog(),
      ),
    );

class Blog extends StatefulWidget {
  const Blog({Key? key}) : super(key: key);

  @override
  _BlogState createState() => _BlogState();
}

class _BlogState extends State<Blog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow[600],
        title: const Text('Blog'),
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Center(
              child: Image(
                width: 250.0,
                height: 250.0,
                image: AssetImage('assets/logo_car.png'),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Get',
                    style:
                        TextStyle(fontSize: 50.0, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    'New',
                    style: TextStyle(
                        fontSize: 50.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.yellow[600]),
                  ),
                  const Text(
                    'Car',
                    style:
                        TextStyle(fontSize: 50.0, fontWeight: FontWeight.w400),
                  )
                ],
              ),
            ),
          ]),
    );
  }
}
