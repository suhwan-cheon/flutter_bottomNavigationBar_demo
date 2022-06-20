import 'package:flutter/material.dart';
import 'package:flutter_bottomnavigationbar_demo/dish.dart';

class DinnerScreen extends StatelessWidget {
  const DinnerScreen({
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
              '저녁 뭐먹지?',
              style: TextStyle(fontSize: 30),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => dish(
                      menu: '저녁 학식',
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
