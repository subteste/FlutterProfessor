import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(
    MaterialApp(
      home: Login(),
    ),
  );
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Professor Online"),
        backgroundColor: Colors.green,
      ),

      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Image.asset("assets/images/graduate.png", scale: 3.5),
            ),
          ],
        ),
      ),
    );
  }
}
