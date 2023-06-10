import 'package:flutter/material.dart';
import 'package:quiz_app/Options.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  int ind = 0;
  bool attempted = false;
  bool corrans = false;
  Widget build(BuildContext context) {
    void change1() {
      ind = 0;
      attempted = false;
      corrans = false;
      setState(() {});
    }

    void change2() {
      attempted = false;
      corrans = false;
      ind = 1;
      setState(() {});
    }

    void change3() {
      attempted = false;
      corrans = false;
      ind = 2;
      setState(() {});
    }

    var questions1 = <Map<String, Object>>[
      {
        'questiontext': "What's my name?",
        'answertext': [
          {'text': 'Navneet', 'check': 'true'},
          {'text': 'Thakur', 'check': 'false'},
          {'text': 'Kamra', 'check': 'false'},
          {'text': 'Shivam', 'check': 'false'}
        ],
        'answer': 'Navneet'
      },
      {
        'questiontext': "What's my age?",
        "answertext": [
          {'text': '19', 'check': 'true'},
          {'text': '20', 'check': 'false'},
          {'text': '21', 'check': 'false'},
          {'text': '22', 'check': 'false'}
        ],
        'answer': '20'
      },
      {
        "questiontext": "Are you employed?",
        "answertext": [
          {'text': 'YES', 'check': 'false'},
          {'text': 'NO', 'check': 'true'}
        ],
        'answer': 'NO'
      }
    ];
    var l1 = questions1[ind]['answertext'] as List<Map<String, String>>;
    void attempt(String s) {
      attempted = true;
      if (questions1[ind]['answer'].toString() == s) {
        corrans = true;
      } else
        corrans = false;
      setState(() {});
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(
          child: Text(
            "Quiz App",
            style: TextStyle(),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: change1,
                child: Text("Q1"),
                style: ButtonStyle(
                  foregroundColor: MaterialStatePropertyAll(Colors.white),
                  backgroundColor: MaterialStatePropertyAll(
                      !(ind == 0) ? Colors.purple : Colors.red),
                ),
              ),
              TextButton(
                onPressed: change2,
                child: Text("Q2"),
                style: ButtonStyle(
                  foregroundColor: MaterialStatePropertyAll(Colors.white),
                  backgroundColor: MaterialStatePropertyAll(
                      !(ind == 1) ? Colors.purple : Colors.red),
                ),
              ),
              TextButton(
                onPressed: change3,
                child: Text("Q3"),
                style: ButtonStyle(
                  foregroundColor: MaterialStatePropertyAll(Colors.white),
                  backgroundColor: MaterialStatePropertyAll(
                      !(ind == 2) ? Colors.purple : Colors.red),
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          Container(
            decoration: BoxDecoration(
                color: Colors.red, borderRadius: BorderRadius.circular(10.0)),
            margin: EdgeInsets.all(8.0),
            height: 40,
            width: double.infinity,
            child: Center(
              child: Text(
                questions1[ind]['questiontext'].toString(),
                style: TextStyle(color: Colors.white, fontSize: 18.0),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: ListView.builder(
              itemBuilder: ((context, index) => Options(
                  s: l1[index]['text'].toString(),
                  handler: attempt,
                  index: ind)),
              itemCount: l1.length,
            ),
          ),
          attempted
              ? Expanded(
                  child: (corrans && attempted)
                      ? Icon(
                          Icons.check,
                          color: Colors.black,
                          size: 70,
                        )
                      : Icon(
                          Icons.close,
                          color: Colors.black,
                          size: 70,
                        ))
              : Expanded(child: Text(""))
        ],
      ),
    );
  }
}
