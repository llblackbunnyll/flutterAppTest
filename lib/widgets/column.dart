import 'package:flutter/material.dart';

class testColumn extends StatelessWidget {
  //const ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: SafeArea(
                child: Column(
      //---------------------------------
      verticalDirection: VerticalDirection.down,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      //---------------------------------------------
      children: [
        Container(
          width: 100,
          height: 100,
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
        Container(
          width: 50,
          height: 50,
          color: Colors.blue,
          child: Center(
            child: Text('third'),
          ),
        )
      ],
    ))));
  }
}
