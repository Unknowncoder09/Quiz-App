import 'package:flutter/material.dart';
import 'package:quiz_app/home.dart';

class start extends StatelessWidget {
  const start({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Quiz App",
            style: TextStyle(),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 200),
            Container(
              margin: EdgeInsets.all(8.0),
              child: Text(
                "Welcome to game of questions and answers",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 45.0),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 90,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: const BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.all(Radius.circular(50.0))),
                  child: Center(
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new Home()),
                        );
                      },
                      icon: Center(
                        child: Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 40,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
