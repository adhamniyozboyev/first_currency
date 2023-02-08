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
  Widget exp(String b,  [Color col2 = Colors.orange]) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: col2,
          fixedSize: Size(40, 65),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        ),
        onPressed: (() {
          controller.text+=b;
        }),
      

        child: Text(
          b,
          style: TextStyle(fontSize: 30),
        ));
  }

  Widget wid(String a, [Color col = Colors.black]) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            fixedSize: Size(40, 65),
            backgroundColor: col,
            surfaceTintColor: col),
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
                hintText: '0', hintStyle: TextStyle(fontSize: 40)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      fixedSize: Size(40, 65),
                      backgroundColor: Colors.blue),
                  onPressed: () {
                    controller.text = '';
                  },
                  child: Text(
                    'C',
                    style: TextStyle(fontSize: 30),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      fixedSize: Size(40, 65),
                      backgroundColor: Colors.blue),
                  onPressed: () {
                    //  controller.text=controller.text*controller.text;
                  },
                  child: Text(
                    'X2',
                    style: TextStyle(fontSize: 25),
                  )),
              wid('%', Colors.blue),
              exp('/')
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              wid('7'),
              wid('8'),
              wid('9'),
              exp('x', )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              wid('4'),
              wid('5'),
              wid('6'),
              exp('-')
            ]
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              wid('1'),
              wid('2'),
              wid('3'),
              exp('+' )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      backgroundColor: Colors.black,
                      fixedSize: Size(163, 65)),
                  onPressed: () {},
                  child: Text(
                    '0',
                    style: TextStyle(fontSize: 30),
                  )),
              wid(' .'),
              wid('=', Colors.orange),
            ],
          )
        ],
      ),
    );
  }
}
