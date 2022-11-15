import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class PasswordScreen extends StatelessWidget {
  const PasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Create a Password",
                style: TextStyle(fontSize: 28, color: HexColor("#000000")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
