import 'package:flutter/material.dart';
import './user_card.dart';

class MyWidget extends StatefulWidget {
  //const MyWidget({Key? key}) : super(key: key);
  final String name;
  MyWidget({
    required this.name,
  });
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  late int counter;
  late String fowllowName;
  @override
  void initState() {
    super.initState();
    counter = 0;
    fowllowName = widget.name;
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // body: Center(
        //   child: Text(
        //     'Counter is: $counter$fowllowName',
        //     style: TextStyle(fontSize: 40),
        //   ),
        // ),
        appBar: AppBar(
          title: Text("test bar"),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Business',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'School',
            ),
          ],
        ),
        body: SafeArea(
          child: Usercard(
            userName: "nuttawat $counter",
            userUrl: "https://picsum.photos/200/300",
          ),
          // Text('Counter is: $counter$fowllowName',
          //    style: TextStyle(fontSize: 40),
          // ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.add,
          ),
          onPressed: () {
            setState(() {
              counter = counter + 1;
              fowllowName = "haha";
            });
          },
        ),
      ),
    );
  }
}
