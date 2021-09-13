import 'package:flutter/material.dart';

class testStack extends StatelessWidget {
  //const ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: SafeArea(
                child: Stack(
      //---------------------------------
      alignment: Alignment.bottomRight,
      //fit: ,
      //overflow: ,
      //---------------------------------------------
      children: [
        Container(
          width: 300,
          height: 300,
          color: Colors.red,
          child: Center(
            child: Text('first'),
          ),
        ),
        Container(
          width: 200,
          height: 200,
          color: Colors.green,
          child: Center(
            child: Text('sec'),
          ),
        ),
        Positioned(
          right: 0,
          top: 20,
          child: Container(
            width: 50,
            height: 50,
            color: Colors.blue,
            child: Center(
              child: Text('third'),
            ),
          ),
        )
      ],
    ))));
  }
}
