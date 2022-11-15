import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:registertask/Screens/password_screen.dart';
import 'package:registertask/Screens/phone_screen.dart';

import '../shared/components/components.dart';

class EmailScreen extends StatelessWidget {
  EmailScreen({Key? key}) : super(key: key);

  var emailController = TextEditingController();

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
                "Enter your email address",
                style: TextStyle(fontSize: 28, color: HexColor("#000000")),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                width: 318,
                height: 29,
                child: TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Please enter your email address";
                    }
                  },
                  decoration: const InputDecoration(
                    //prefixIcon: Icon(Icons.email_outlined),
                    labelText: "Enter your email address",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              sharedButton("Next", PasswordScreen(), context),
              SizedBox(
                height: 40.0,
              ),
              epButton("Use mobile phone", PhoneScreen(), context)
            ],
          ),
        ),
      ),
    );
  }
}
