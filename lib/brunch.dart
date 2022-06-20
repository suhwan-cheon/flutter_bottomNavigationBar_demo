import 'package:flutter/material.dart';
import 'package:flutter_bottomnavigationbar_demo/dish.dart';

class BrunchScreen extends StatelessWidget {
  const BrunchScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '아침 뭐먹지?',
              style: TextStyle(fontSize: 30),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => dish(
                      menu: '아침 학식',
                    ),
                  ),
                );
              },
              child: Text("보러가기"),
            ),
          ],
        ),
      ),
    );
  }
}
