import 'package:flutter/material.dart';

class MyStateFul extends StatefulWidget {
  final String text;

  const MyStateFul({Key? key, required this.text}) : super(key: key);

  @override
  _BiggerTextState createState() => _BiggerTextState();
}


class _BiggerTextState extends State<MyStateFul> {
  double _textSize = 18.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(widget.text, style: TextStyle(fontSize: _textSize, color: Colors.black),),
            SizedBox(height: 10,),
            ElevatedButton(
              child: const Text('Click Me!'),
              onPressed: () {
                setState(() {
                  _textSize = (_textSize == 16.0) ? 32.0 : 16.0;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}