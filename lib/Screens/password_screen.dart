import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class PasswordScreen extends StatelessWidget {
  PasswordScreen({Key? key}) : super(key: key);

  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Create a Password",
                style: TextStyle(fontSize: 28, color: HexColor("#000000")),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                width: 318,
                height: 29,
                child: TextFormField(
                  controller: passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Please enter your password";
                    }
                  },
                  decoration: const InputDecoration(
                    //prefixIcon: Icon(Icons.email_outlined),
                    labelText: "Password",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Column(
                children: [
                  Text(
                    "Enter at least six characters, including numbers,",
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                  Text(
                    "letters, and punctuation(such as !" " or #) .",
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
