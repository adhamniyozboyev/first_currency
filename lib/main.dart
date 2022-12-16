import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MyCurrency extends StatefulWidget {
  const MyCurrency({Key? key}) : super(key: key);

  @override
  State<MyCurrency> createState() => _MyCurrencyState();
}

class _MyCurrencyState extends State<MyCurrency> {
  TextEditingController controller1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TextField(
          readOnly: true,
          controller: controller1,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        controller1.text += '7';
                      });
                    },
                    child: Text('7')),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        controller1.text += '4';
                      });
                    },
                    child: Text('4')),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        controller1.text += '1';
                      });
                    },
                    child: Text('1')),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        controller1.text += '.';
                      });
                    },
                    child: Text('.'))
              ],
            ),
            Column(
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        controller1.text += '8';
                      });
                    },
                    child: Text('8')),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        controller1.text += '5';
                      });
                    },
                    child: Text('5')),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        controller1.text += '2';
                      });
                    },
                    child: Text('2')),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        controller1.text += '0';
                      });
                    },
                    child: Text('0'))
              ],
            ),
            Column(
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        controller1.text += '9';
                      });
                    },
                    child: Text('9')),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        controller1.text += '6';
                      });
                    },
                    child: Text('6')),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        controller1.text += '3';
                      });
                    },
                    child: Text('3')),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        controller1.text += ',';
                      });
                    },
                    child: Text(','))
              ],
            ),
            Column(
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        controller1.text += '+';
                      });
                    },
                    child: Text('+')),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        controller1.text += '-';
                      });
                    },
                    child: Text('-')),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        controller1.text += '*';
                      });
                    },
                    child: Text('*')),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        controller1.text += '/';
                      });
                    },
                    child: Text('/'))
              ],
            ),
          ],
        ),
      ],
    ));
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyCurrency(),
  ));
}
