import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: BallPage(),
  ));
}

class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: const Text('Ask everything'),
      ),
      body: const Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;
  void randomBall() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
      print('Answer type $ballNumber');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: TextButton(
      child: Image.asset('images/ball$ballNumber.png'),
      onPressed: () {
        randomBall();
      },
    ));
  }
}
