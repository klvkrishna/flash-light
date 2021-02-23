import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:torch_compat/torch_compat.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Container(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                      height: 360,
                      color: Color(0x55555555),
                      child: Text('ON',
                          style: TextStyle(
                            color: Colors.amber[50],
                          )),
                      onPressed: () {
                        TorchCompat.turnOn();
                      }),
                ),
                Expanded(
                  child: FlatButton(
                      height: 360,
                      color: Colors.white60,
                      child: Text('OFF'),
                      onPressed: () {
                        TorchCompat.turnOff();
                      }),
                )
              ],
            ),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }

  @override
  void dispose() {
    // Mandatory for Camera 1 on Android
    TorchCompat.dispose();
    super.dispose();
  }
}
