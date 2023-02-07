import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController _controller = TextEditingController();
  // bool a=false;
  // bool b=false;
  // bool c=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Adham calc'),
        ),
        backgroundColor: Color.fromARGB(255, 17, 58, 19),
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 260,
            ),
            TextField(
              textAlign: TextAlign.end,
              controller: _controller,
              readOnly: true,
              style: TextStyle(color: Colors.white, fontSize: 50),
              decoration: InputDecoration(
                  hintText: '                          0',
                  hintStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder()),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(70)),
                        fixedSize: Size(40, 65),
                        backgroundColor: Color.fromARGB(255, 168, 166, 166)),
                    onPressed: () {
                      _controller.text = '';
                    },
                    child: Text(
                      'AC',
                      style: TextStyle(fontSize: 24, color: Colors.black),
                    )),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(70)),
                        fixedSize: Size(40, 65),
                        backgroundColor: Color.fromARGB(255, 168, 166, 166)),
                    onPressed: () {},
                    child:
                        Icon(Icons.calculate, size: 35, color: Colors.black)),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(70)),
                        fixedSize: Size(40, 65),
                        backgroundColor: Color.fromARGB(255, 168, 166, 166)),
                    onPressed: () {
                      _controller.text += '%';
                    },
                    child: Text('%',
                        style: TextStyle(fontSize: 35, color: Colors.black))),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(70)),
                        fixedSize: Size(40, 65),
                        backgroundColor: Color.fromARGB(255, 245, 161, 25)),
                    onPressed: () {
                    
                    },
                    child: Text('/',
                        style: TextStyle(
                          fontSize: 35,
                        )))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(70)),
                        fixedSize: Size(40, 65),
                        backgroundColor: Color.fromARGB(255, 78, 77, 76)),
                    onPressed: () {
                      _controller.text += '7';
                    },
                    child: Text('7',
                        style: TextStyle(
                          fontSize: 35,
                        ))),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(70)),
                        fixedSize: Size(40, 65),
                        backgroundColor: Color.fromARGB(255, 78, 77, 76)),
                    onPressed: () {
                      _controller.text += '8';
                    },
                    child: Text('8',
                        style: TextStyle(
                          fontSize: 35,
                        ))),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(70)),
                        fixedSize: Size(40, 65),
                        backgroundColor: Color.fromARGB(255, 78, 77, 76)),
                    onPressed: () {
                      _controller.text += '9';
                    },
                    child: Text('9',
                        style: TextStyle(
                          fontSize: 35,
                        ))),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(70)),
                        fixedSize: Size(40, 65),
                        backgroundColor: Color.fromARGB(255, 245, 161, 25)),
                    onPressed: () {
                      _controller.text += 'x';
                    },
                    child: Text('x',
                        style: TextStyle(
                          fontSize: 35,
                        )))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(70)),
                        fixedSize: Size(40, 65),
                        backgroundColor: Color.fromARGB(255, 78, 77, 76)),
                    onPressed: () {
                      _controller.text += '4';
                    },
                    child: Text('4',
                        style: TextStyle(
                          fontSize: 35,
                        ))),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(70)),
                        fixedSize: Size(40, 65),
                        backgroundColor: Color.fromARGB(255, 78, 77, 76)),
                    onPressed: () {
                      _controller.text += '5';
                    },
                    child: Text('5',
                        style: TextStyle(
                          fontSize: 35,
                        ))),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(70)),
                        fixedSize: Size(40, 65),
                        backgroundColor: Color.fromARGB(255, 78, 77, 76)),
                    onPressed: () {
                      _controller.text += '6';
                    },
                    child: Text('6',
                        style: TextStyle(
                          fontSize: 35,
                        ))),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(70)),
                        fixedSize: Size(40, 65),
                        backgroundColor: Color.fromARGB(255, 245, 161, 25)),
                    onPressed: () {
                      _controller.text += '-';
                    },
                    child: Text('-',
                        style: TextStyle(
                          fontSize: 35,
                        )))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(70)),
                        fixedSize: Size(40, 65),
                        backgroundColor: Color.fromARGB(255, 78, 77, 76)),
                    onPressed: () {
                      _controller.text += '1';
                    },
                    child: Text('1',
                        style: TextStyle(
                          fontSize: 35,
                        ))),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(70)),
                        fixedSize: Size(40, 65),
                        backgroundColor: Color.fromARGB(255, 78, 77, 76)),
                    onPressed: () {
                      _controller.text += '2';
                    },
                    child: Text('2',
                        style: TextStyle(
                          fontSize: 35,
                        ))),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(70)),
                        fixedSize: Size(40, 65),
                        backgroundColor: Color.fromARGB(255, 78, 77, 76)),
                    onPressed: () {
                      _controller.text += '3';
                    },
                    child: Text('3',
                        style: TextStyle(
                          fontSize: 35,
                        ))),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(70)),
                        fixedSize: Size(40, 65),
                        backgroundColor: Color.fromARGB(255, 245, 161, 25)),
                    onPressed: () {
                      _controller.text += '+';
                    },
                    child: Text('+',
                        style: TextStyle(
                          fontSize: 35,
                        )))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(70)),
                        fixedSize: Size(165, 65),
                        backgroundColor: Color.fromARGB(255, 78, 77, 76)),
                    onPressed: () {
                      _controller.text += '0';
                    },
                    child: Text('0                    ',
                        style: TextStyle(
                          fontSize: 35,
                        ))),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(70)),
                        fixedSize: Size(40, 65),
                        backgroundColor: Color.fromARGB(255, 78, 77, 76)),
                    onPressed: () {
                      _controller.text += ',';
                    },
                    child: Text(',',
                        style: TextStyle(
                          fontSize: 35,
                        ))),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(70)),
                        fixedSize: Size(30.5, 65),
                        backgroundColor: Color.fromARGB(255, 245, 161, 25)),
                    onPressed: () {
                      int ind = 0;
                      String s = _controller.text;
                      ind = s.indexOf('+');
                      if (ind != -1) {
                        String a = s.substring(0, ind);
                        String b = s.substring(ind + 1);
                        num ans = num.parse(a) + num.parse(b);
                        _controller.text = ans.toString();
                      }
                      ind = s.indexOf('-');
                      if (ind != -1) {
                        String a = s.substring(0, ind);
                        String b = s.substring(ind + 1);
                        num ans = num.parse(a) - num.parse(b);
                        _controller.text = ans.toString();
                      }
                      ind = s.indexOf('/');
                      if (ind != -1) {
                        String a = s.substring(0, ind);
                        String b = s.substring(ind + 1);
                        int ans = int.parse(a) ~/ int.parse(b);
                        _controller.text = ans.toString();
                      }
                      ind = s.indexOf('x');
                      if (ind != -1) {
                        String a = s.substring(0, ind);
                        String b = s.substring(ind + 1);
                        int ans = int.parse(a) * int.parse(b);
                        _controller.text = ans.toString();
                      }
                      ind = s.indexOf('%');
                      if (ind != -1) {
                        String a = s.substring(0, ind);
                        String b = s.substring(ind + 1);
                        num ans = int.parse(a) * int.parse(b) / 100;
                        _controller.text = ans.toString();
                      }
                    },
                    child: Text('=',
                        style: TextStyle(
                          fontSize: 35,
                        ))),
              ],
            )
          ],
        ),
      ),
    );
  }
}
