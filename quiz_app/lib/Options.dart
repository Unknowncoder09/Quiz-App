import 'package:flutter/material.dart';
import 'package:quiz_app/home.dart';

class Options extends StatelessWidget {
  String s;
  late Function handler;
  int index;
  Options({required this.s, required this.handler, required this.index});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          child: Container(
            margin: EdgeInsets.all(4.0),
            decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.circular(10.0)),
            height: 40,
            width: double.infinity,
            child: Center(
              child: Text(
                s,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          onTap: () {
            handler(s);
          },
        ),
      ],
    );
  }
}
