import 'package:flutter/material.dart';
import 'package:flutter_bottomnavigationbar_demo/dish.dart';

class LunchScreen extends StatelessWidget {
  const LunchScreen({
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
              '점심 뭐먹지?',
              style: TextStyle(fontSize: 30),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => dish(
                      menu: '점심 학식',
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
