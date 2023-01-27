import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Center(child: Text('Ask me Anything')),
          backgroundColor: Colors.blue,
        ),
        body: Magicball(),
      ),
    ),
  );
}

class Magicball extends StatefulWidget {
  @override
  State<Magicball> createState() => _MagicballState();
}

class _MagicballState extends State<Magicball> {
  @override
  int setImageNumber = 1;

  Widget build(BuildContext context) {
    return Center(
        child: Row(
      children: [
        Expanded(
            child: TextButton(
          onPressed: () {
            setState(() {
              setImageNumber = Random().nextInt(5) + 1;
            });
          },
          child: Image.asset('images/ball$setImageNumber.png'),
        ))
      ],
    ));
  }
}
