import 'package:flutter/material.dart';

class Usercard extends StatelessWidget {
  //const ({ Key? key }) : super(key: key);
  //final String userName = 'Defualt Name';
  //final String userUrl = 'https://picsum.photos/200/300';
  final String userName;
  final String userUrl;
  Usercard({required this.userName, required this.userUrl});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: Colors.blueGrey.shade300,
            backgroundImage: NetworkImage(
              userUrl,
            ),
          ),
          Card(
            child: Text(
              userName,
              style: TextStyle(fontSize: 20),
            ),
          )
        ],
      ),
    );
  }
}
