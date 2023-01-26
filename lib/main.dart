import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyCurrency(),
  ));
}

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
      appBar: AppBar(title:Center(child: Text('My calc')),backgroundColor: Color.fromARGB(255, 51, 155, 241),),
        backgroundColor: Color.fromARGB(255, 139, 213, 143),
        body: Column(
          children: [
            SizedBox(
              height: 310,
            ),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Colors.white),
              keyboardType: TextInputType.none,
              controller: controller1,
            ),
            Container(
              color: Colors.white,
              height: 397.7,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                             fixedSize: Size(25, 65),
                           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(120)),
                              backgroundColor: Colors.black),
                          onPressed: () {
                            controller1.text += '7';
                          },
                          child: Text('7')),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                           fixedSize: Size(25, 65),
                           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(120)),
                            backgroundColor: Colors.black),
                        onPressed: () {
                          controller1.text += '8';
                        },
                        child: Text(
                          '8',
                        ),
                      ),
                      ElevatedButton(
                        
                          style: ElevatedButton.styleFrom(
                            fixedSize: Size(25, 65),
                           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(120)),
                              backgroundColor: Colors.black),
                          onPressed: () {
                            controller1.text += '9';
                          },
                          child: Text('9')),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                             fixedSize: Size(25, 65),
                           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(120)),
                              backgroundColor:
                                  Colors.orange),
                          onPressed: () {
                            controller1.text += '+';
                          },
                          child: Text('+'))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            fixedSize: Size(25, 65),
                           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(120)),
                              backgroundColor: Colors.black),
                          onPressed: () {
                            controller1.text += '4';
                          },
                          child: Text('4')),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                                 fixedSize: Size(25, 65),
                           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(120)),
                              backgroundColor: Colors.black),
                          onPressed: () {
                            controller1.text += '5';
                          },
                          child: Text('5')),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                                 fixedSize: Size(25, 65),
                           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(120)),
                              backgroundColor: Colors.black),
                          onPressed: () {
                            controller1.text += '6';
                          },
                          child: Text('6')),
                      ElevatedButton(
               style: ElevatedButton.styleFrom(
                    fixedSize: Size(25, 65),
                           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(120)),
               backgroundColor: Colors.orange),

                          onPressed: () {
                          
                            controller1.text += '-';
                          },
                          child: Text('-'))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                                 fixedSize: Size(25, 65),
                           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(120)),
                              backgroundColor: Colors.black),
                          onPressed: () {
                            controller1.text += '1';
                          },
                          child: Text('1')),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                                 fixedSize: Size(25, 65),
                           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(120)),
                              backgroundColor: Colors.black),
                          onPressed: () {
                            controller1.text += '2';
                          },
                          child: Text('2')),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                                 fixedSize: Size(25, 65),
                           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(120)),
                              backgroundColor: Colors.black),
                          onPressed: () {
                            controller1.text += '3';
                          },
                          child: Text('3')),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                                 fixedSize: Size(25, 65),
                           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(120)),
                              backgroundColor:
                                  Colors.orange),
                          onPressed: () {
                            int ind = 0;
                            String s = controller1.text;
                            ind = s.indexOf('+');
                            if (ind != -1) {
                              String a = s.substring(0, ind);
                              String b = s.substring(ind + 1);
                              num ans = num.parse(a) + num.parse(b);
                              controller1.text = ans.toString();
                            }
                            ind = s.indexOf('-');
                            if (ind != -1) {
                              String a = s.substring(0, ind);
                              String b = s.substring(ind + 1);
                              num ans = num.parse(a) - num.parse(b);
                              controller1.text = ans.toString();
                            }
                            ind = s.indexOf('/');
                            if (ind != -1) {
                              String a = s.substring(0, ind);
                              String b = s.substring(ind + 1);
                              num ans = num.parse(a) / num.parse(b);
                              controller1.text = ans.toString();
                            }
                            ind = s.indexOf('*');
                            if (ind != -1) {
                              String a = s.substring(0, ind);
                              String b = s.substring(ind + 1);
                              num ans = num.parse(a) * num.parse(b);
                              controller1.text = ans.toString();
                            }

                           
                          },
                          child: Text('='))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                                 fixedSize: Size(25, 65),
                           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(120)),
                              backgroundColor: Colors.black),
                          onPressed: () {
                            controller1.text += '.';
                          },
                          child: Text('.')),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                                 fixedSize: Size(25, 65),
                           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(120)),
                              backgroundColor: Colors.black),
                          onPressed: () {
                            controller1.text += '0';
                          },
                          child: Text('0')),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                                 fixedSize: Size(25, 65),
                           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(120)),
                              backgroundColor: Colors.black),
                          onPressed: () {
                            controller1.text += '00';
                          },
                          child: Text('00')),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                                 fixedSize: Size(25, 65),
                           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(120)),
                              backgroundColor:
                                  Colors.orange),
                          onPressed: () {
                            controller1.text += '/';
                          },
                          child: Text('/'))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                                 fixedSize: Size(25, 65),
                           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(120)),
                              backgroundColor:
                                  Colors.orange),
                          onPressed: () {
                            controller1.text = '0';
                          },
                          child: Text('C')),
                      ElevatedButton(
                        
                          style: ElevatedButton.styleFrom(
                                 fixedSize: Size(25, 65),
                           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(120)),
                              backgroundColor:
                                  Colors.orange),
                          onPressed: () {
                            controller1.text = '';
                          },
                          child: Text('clear')),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                                 fixedSize: Size(25, 65),
                           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(120)),
                              backgroundColor:
                                  Colors.orange),
                          onPressed: () {
                            controller1.text = controller1.text
                                .substring(0, controller1.text.length - 1);
                          },
                          child: Text('X')),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                                 fixedSize: Size(25, 65),
                           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(120)),
                              backgroundColor:
                                  Colors.orange),
                          onPressed: () {
                            controller1.text += '*';
                          },
                          child: Text('*'))
                    ],
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
