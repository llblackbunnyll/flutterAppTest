import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class TestContainer extends StatelessWidget {
  const TestContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: SafeArea(
        child: Container(
          // margin: EdgeInsets.all(50),
          // padding: EdgeInsets.all(50),
          // width: double.infinity,
          // height: 200,
          decoration: BoxDecoration(
              color: Colors.amber,
              border: Border.all(width: 4.0, color: Colors.red),
              borderRadius: BorderRadius.circular(10)),

          //color: Colors.deepOrange.shade400,
          child: Container(
            margin: EdgeInsets.all(20),
            width: 50,
            height: 50,
            color: Colors.blue,
          ),
          // child: Text(
          //   "hello world",
          //   style: TextStyle(
          //       fontSize: 100,
          //       color: Colors.white,
          //       backgroundColor: Colors.blue),
          // ),
        ),
      )),
    );
  }
}
