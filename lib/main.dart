import 'package:first_currency/second.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller = TextEditingController();
  Widget wid(String a) {
    return ElevatedButton(
        onPressed: () {
          controller.text += a;
        },
        child: Text(a));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextField(
            controller: controller,
            decoration: InputDecoration(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              wid('AC'),
              wid('mas'),
              wid('%'),
              wid('/'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              wid('7'),
              wid('8'),
              wid('9'),
              wid('X'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              wid('4'),
              wid('5'),
              wid('6'),
              wid('-'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              wid('1'),
              wid('2'),
              wid('3'),
              wid('+'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              wid('0'),
              wid('.'),
              wid('='),
            ],
          )
        ],
      ),
    );
  }
}
