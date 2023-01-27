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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(height: 400,),
          TextField(
            controller: _controller,
            readOnly: true,
            decoration: InputDecoration(border: OutlineInputBorder()),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(70)),
                      fixedSize: Size(30, 65),
                      backgroundColor:
                          Color.fromARGB(255, 168, 166, 166)),
                  onPressed: () {
                    _controller.text = '';
                  },
                  child: Text('AC')),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(70)),
                    fixedSize: Size(30, 65),
                    backgroundColor:
                        Color.fromARGB(255, 168, 166, 166)),
                onPressed: () {},
                child: Icon(Icons.calculate),
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(70)),
                      fixedSize: Size(30, 65),
                      backgroundColor:
                          Color.fromARGB(255, 168, 166, 166)),
                  onPressed: () {
                    _controller.text += '%';
                  },
                  child: Text('%')),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(70)),
                      fixedSize: Size(30, 65),
                      backgroundColor:
                          Color.fromARGB(255, 245, 161, 25)),
                  onPressed: () {
                    _controller.text += '/';
                  },
                  child: Text('/'))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(70)),
                      fixedSize: Size(30, 65),
                      backgroundColor:
                          Color.fromARGB(255, 78, 77, 76)),
                  onPressed: () {
                    _controller.text += '7';
                  },
                  child: Text('7')),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(70)),
                      fixedSize: Size(30, 65),
                      backgroundColor:
                          Color.fromARGB(255, 78, 77, 76)),
                  onPressed: () {
                    _controller.text += '8';
                  },
                  child: Text('8')),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(70)),
                      fixedSize: Size(30, 65),
                      backgroundColor:
                          Color.fromARGB(255, 78, 77, 76)),
                  onPressed: () {
                    _controller.text += '9';
                  },
                  child: Text('9')),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(70)),
                      fixedSize: Size(30, 65),
                      backgroundColor:
                          Color.fromARGB(255, 245, 161, 25)),
                  onPressed: () {
                    _controller.text += 'x';
                  },
                  child: Text('x'))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(70)),
                      fixedSize: Size(30, 65),
                      backgroundColor:
                          Color.fromARGB(255, 78, 77, 76)),
                  onPressed: () {
                    _controller.text += '4';
                  },
                  child: Text('4')),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(70)),
                      fixedSize: Size(30, 65),
                      backgroundColor:
                          Color.fromARGB(255, 78, 77, 76)),
                  onPressed: () {
                    _controller.text += '5';
                  },
                  child: Text('5')),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(70)),
                      fixedSize: Size(30, 65),
                      backgroundColor:
                          Color.fromARGB(255, 78, 77, 76)),
                  onPressed: () {
                    _controller.text += '6';
                  },
                  child: Text('6')),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(70)),
                      fixedSize: Size(30, 65),
                      backgroundColor:
                          Color.fromARGB(255, 245, 161, 25)),
                  onPressed: () {
                    _controller.text += '-';
                  },
                  child: Text('-'))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(70)),
                      fixedSize: Size(30, 65),
                      backgroundColor:
                          Color.fromARGB(255, 78, 77, 76)),
                  onPressed: () {
                    _controller.text += '1';
                  },
                  child: Text('1')),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(70)),
                      fixedSize: Size(30, 65),
                      backgroundColor:
                          Color.fromARGB(255, 78, 77, 76)),
                  onPressed: () {
                    _controller.text += '2';
                  },
                  child: Text('2')),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(70)),
                      fixedSize: Size(30, 65),
                      backgroundColor:
                          Color.fromARGB(255, 78, 77, 76)),
                  onPressed: () {
                    _controller.text += '3';
                  },
                  child: Text('3')),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(70)),
                      fixedSize: Size(30, 65),
                      backgroundColor:
                          Color.fromARGB(255, 245, 161, 25)),
                  onPressed: () {
                    _controller.text += '+';
                  },
                  child: Text('+'))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(70)),
                      fixedSize: Size(155, 65),
                      backgroundColor:
                          Color.fromARGB(255, 78, 77, 76)),
                  onPressed: () {
                    _controller.text += '0';
                  },
                  child: Text('0')),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(70)),
                      fixedSize: Size(30, 65),
                      backgroundColor:
                          Color.fromARGB(255, 78, 77, 76)),
                  onPressed: () {
                    _controller.text += ',';
                  },
                  child: Text(',')),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(70)),
                      fixedSize: Size(30, 65),
                      backgroundColor:
                          Color.fromARGB(255, 245, 161, 25)),
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
                      num ans = num.parse(a) / num.parse(b);
                      _controller.text = ans.toString();
                    }
                    ind = s.indexOf('x');
                    if (ind != -1) {
                      String a = s.substring(0, ind);
                      String b = s.substring(ind + 1);
                      num ans = num.parse(a) * num.parse(b);
                      _controller.text = ans.toString();
                    }
                  },
                  child: Text('=')),
            ],
          )
        ],
      ),
    );
  }
}
