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
  Widget wid(String a, [Color col = Colors.black]) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            fixedSize: Size(40, 65),
            backgroundColor: col),
        onPressed: () {
          controller.text += a;
        },
        child: Text(
          a,
          style: TextStyle(fontSize: 30),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 370,
          ),
          TextField(
            style: TextStyle(fontSize: 40),
            
            textAlign: TextAlign.end,
            readOnly: true,
            controller: controller,
            decoration: InputDecoration(
              hintText: '0',
              hintStyle: TextStyle(fontSize: 40)
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              wid('C', Colors.blue),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      fixedSize: Size(40, 65),
                      backgroundColor: Colors.blue),
                  onPressed: () {},
                  child: Text('X2',style: TextStyle(fontSize: 25),)),

              wid('%', Colors.blue),
              wid('/', Colors.orange),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              wid('7'),
              wid('8'),
              wid('9'),
              wid('x', Colors.orange),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              wid('4'),
              wid('5'),
              wid('6'),
              wid('-', Colors.orange),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              wid('1'),
              wid('2'),
              wid('3'),
              wid('+', Colors.orange),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                      backgroundColor: Colors.black, fixedSize: Size(163, 65)),
                  onPressed: () {},
                  child: Text('0',style: TextStyle(fontSize: 30),)),
              wid(' .'),
              wid('=', Colors.orange),
            ],
          )
        ],
      ),
    );
  }
}
