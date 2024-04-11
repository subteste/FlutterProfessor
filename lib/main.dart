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

            Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 8),
              child: RichText(
                text: const TextSpan(
                  style: TextStyle(fontSize: 30, shadows: [Shadow(color: Colors.black, blurRadius: 2)]),
                  children: [
                    TextSpan(text: "Professor ", style: TextStyle(color: Colors.black)),
                    TextSpan(text: "Online", style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold)),
                  ]
                ),
              ),
            ),

            getTextField("CPF", Icons.person, context: context, inputType: TextInputType.number),
            getTextField("Senha", Icons.lock, context: context, inputType: TextInputType.visiblePassword),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                  );
                },
                child: const Text("Entrar"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  SizedBox getTextField(String name, IconData icon, {required BuildContext context, TextInputType inputType = TextInputType.text}) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: TextField(
        keyboardType: inputType,
        decoration: InputDecoration(
          labelText: name,
          prefixIcon: Icon(icon),
        ),
      ),
    );
  }
}
