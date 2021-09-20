import 'package:flutter/material.dart';
import 'package:new_app/widgets/formApp.dart';
import 'package:new_app/widgets/row.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  _BottomNavState createState() => _BottomNavState();
}

const kTextStyle = TextStyle(
    fontSize: 40, color: Colors.blueGrey, fontWeight: FontWeight.bold);

class _BottomNavState extends State<BottomNav> {
  int itemIndex = 0;
  List<Widget> widgetList = [
    testRow(),
    Center(
      child: Text(
        "settings",
        style: kTextStyle,
      ),
    ),
    Center(
      child: Text(
        "call",
        style: kTextStyle,
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeScreen'),
        actions: [
          GestureDetector(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Icon(
                Icons.add,
                size: 40,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return FormApp(name: "test");
                }),
              );
            },
          )
        ],
      ),
      body: widgetList.elementAt(itemIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "settings"),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: "call"),
        ],
        currentIndex: itemIndex,
        onTap: (index) {
          setState(() {
            itemIndex = index;
            print(index);
          });
        },
        backgroundColor: Colors.orange,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.white,
      ),
    );
  }
}
