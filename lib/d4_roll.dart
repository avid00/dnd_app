// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, non_constant_identifier_names

import 'package:dnd_app/main.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 212, 209, 209),
        appBar: AppBar(
          title: const Text('DiceD4'),
          backgroundColor: const Color.fromRGBO(15, 157, 88, 1),
        ),
        body: DiceD4(),
      ),
    ),
  );
}

class DiceD4 extends StatefulWidget {
  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<DiceD4> {
  int dice_no = 1;
  void update() {
    setState(() {
      //Random.nextInt(n) returns random integer from 0 to n-1
      dice_no =
          Random().nextInt(4) + 1; //TODO: add modifier from charactersheets
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Expanded(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: FloatingActionButton(
                  child: Image.asset('images/dice$dice_no.png'),
                  onPressed: () {
                    update();
                  },
                ),
              ),
              const SizedBox(height: 20), // Add some spacing

              Text(
                'Result: $dice_no',
                style:
                    const TextStyle(fontSize: 24), // Customize the text style
              ),
              TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: const Color.fromARGB(255, 35, 34, 34),
                  padding: const EdgeInsets.all(16.0),
                  textStyle: const TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MyHomePage(
                              title: '',
                            )), //add next page here
                  );
                },
                child: const Text('Home'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
