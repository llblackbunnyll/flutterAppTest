import 'package:flutter/material.dart';
import 'package:new_app/widgets/bottomNav.dart';
import 'package:new_app/widgets/image.dart';
import 'package:new_app/widgets/homeScreen.dart';
import 'package:new_app/widgets/stack.dart';
import './widgets/user_card.dart';
import './widgets/container.dart';
import './widgets/center.dart';
import './widgets/padding.dart';
import './widgets/column.dart';
import './widgets/row.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  //const App({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom widget',
      home: BottomNav(),
    );
  }
}

// class App extends StatelessWidget {
//   //const App({ Key? key }) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Custom widget',
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('statelesswidget'),
//         ),
//         backgroundColor: Colors.brown,
//         body: SafeArea(
//           child: Usercard(
//             userName: "nuttawat",
//             userUrl: "https://picsum.photos/200/300",
//           ),
//         ),
//       ),
//     );
//   }
// }




















// void main() {
//   //runApp(MyApp());
//   Widget app = MaterialApp(
//     home: Scaffold(
//       drawer: Drawer(
//         child: Text("test"),
//       ),
//       appBar: AppBar(
//         title: Text("test เทส"),
//         centerTitle: true,
//       ),
//       floatingActionButton: FloatingActionButton(
//         child: Text("test"),
//         //backgroundColor: const Color.fromARGB(255, 255, 165, 245),
//         onPressed: () {
//           print("test");
//         },
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.business),
//             label: 'Business',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.school),
//             label: 'School',
//           ),
//         ],
//       ),
//     ),
//     theme: ThemeData.dark(),
//   );
//   runApp(app);
//   // runApp(MaterialApp(
//   //   home: Center(child: Text("hello")),
//   //   theme: ThemeData.dark(),

//   // ));
// }

// class MyScaffold extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       child: Text('Hello, world!'),
//     );
//   }
// }
// class SuperClass {
//   void methodAtSuper() {
//     print("ข้อความของ superclass");
//   }
// }

// class SubClass extends SuperClass {
//   @override
//   void methodAtSuper() {
//     print("ข้อความของ SubClass");
//   }
// }

// void main() {
//   SuperClass test = SuperClass();
//   test.methodAtSuper();
//   SubClass test2 = SubClass();
//   test2.methodAtSuper();
// }
