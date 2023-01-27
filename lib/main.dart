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
          Container(),
          Column(
            children: [
              TextField(
                controller: _controller,
                readOnly: true,
                decoration: InputDecoration(border: OutlineInputBorder()),
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              _controller.text = '';
                            },
                            child: Text('AC')),
                        ElevatedButton(
                          onPressed: () {},
                          child: Icon(Icons.calculate),
                        ),
                        ElevatedButton(
                            onPressed: () {
                              _controller.text += '%';
                            },
                            child: Text('%')),
                        ElevatedButton(
                            onPressed: () {
                              _controller.text += '/';
                            },
                            child: Text('/'))
                      ],
                    ),
                        Row(
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              _controller.text += '7';
                            },
                            child: Text('7')),
                        ElevatedButton(
                          onPressed: () {
                            _controller.text+='8';
                          },
                          child: Text('8')
                        ),
                        ElevatedButton(
                            onPressed: () {
                              _controller.text += '9';
                            },
                            child: Text('9')),
                        ElevatedButton(
                            onPressed: () {
                              _controller.text += 'x';
                            },
                            child: Text('x'))
                      ],
                    ),
                            Row(
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              _controller.text += '4';
                            },
                            child: Text('4')),
                        ElevatedButton(
                          onPressed: () {
                            _controller.text+='5';
                          },
                          child: Text('5')
                        ),
                        ElevatedButton(
                            onPressed: () {
                              _controller.text += '6';
                            },
                            child: Text('6')),
                        ElevatedButton(
                            onPressed: () {
                              _controller.text += '-';
                            },
                            child: Text('-'))
                      ],
                    ),
                      Row(
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              _controller.text += '1';
                            },
                            child: Text('1')),
                        ElevatedButton(
                          onPressed: () {
                            _controller.text+='2';
                          },
                          child: Text('2')
                        ),
                        ElevatedButton(
                            onPressed: () {
                              _controller.text += '3';
                            },
                            child: Text('3')),
                        ElevatedButton(
                            onPressed: () {
                              _controller.text += '+';
                            },
                            child: Text('+'))
                      ],
                    ),
                      Row(
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              _controller.text += '4';
                            },
                            child: Text('4')),
                        ElevatedButton(
                          onPressed: () {
                            _controller.text+='5';
                          },
                          child: Text('5')
                        ),
                        ElevatedButton(
                            onPressed: () {
                              _controller.text += '6';
                            },
                            child: Text('6')),
                     
                      ],
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
