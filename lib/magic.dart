import 'package:flutter/material.dart';

class Demo extends StatefulWidget {
  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  String imagePath = "images/dice1.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Center(
          child: Container(
            width: 100,
            height: 100,
            child: GestureDetector(
              onTap: () {
                if(imagePath == "images/dice1.png"){
                  imagePath = "images/dice2.png";
                }else if(imagePath == "images/dice2.png"){
                  imagePath = "images/dice3.png";
                }else if(imagePath == "images/dice3.png"){
                  imagePath = "images/dice4.png";
                }else{
                  imagePath = "images/dice1.png";
                }
                setState(() {});
              },
              child: CircleAvatar(
                maxRadius: 20.0,
                child: Image.asset(imagePath),
              ),
            ),
          ),
        ),
      ),
    );
  }
}