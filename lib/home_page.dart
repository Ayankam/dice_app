import 'package:flutter/material.dart';
import 'dart:math' as math;

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int solNomer = 1;
  int onNomer = 5;

  void ozgort() {
    setState(() {
      solNomer = math.Random().nextInt(6) + 1;
      onNomer = math.Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFBB603),
      appBar: AppBar(
        title: Center(child: Text('ТАПШЫРМА 03')),
      ),
      body: Center(
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: InkWell(
                    onTap: () {
                      ozgort();
                    },
                    child: Image.asset(
                      'assets/images/dice_$solNomer.png',
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: InkWell(
                    onTap: () {
                      ozgort();
                      // var solNomer = math.Random().nextInt(6) + 1;
                      // var onNomer = math.Random().nextInt(6) + 1;
                    },
                    child: Image.asset(
                      'assets/images/dice_$onNomer.png',
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
