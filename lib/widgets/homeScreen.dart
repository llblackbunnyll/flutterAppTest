import 'package:flutter/material.dart';
import 'package:new_app/widgets/formApp.dart';

class HomeScreen extends StatelessWidget {
  //const ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
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
                    return FormApp(name: "tent");
                  }),
                );
              },
            )
          ],
        ),
        body: GestureDetector(
          onDoubleTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FormApp(name: "tent")),
            );
          },
          child: Center(
            child: Text(
              "แตะสองครั้ง",
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "settings"),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: "call"),
        ],
        currentIndex: 0,
        onTap: (index) {},
      ),
    );
  }
}



//Navigator.push()
//Navigator.pop()