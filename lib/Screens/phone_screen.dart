import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:registertask/Screens/password_screen.dart';
import 'package:registertask/shared/components/components.dart';

import 'email_screen.dart';

class PhoneScreen extends StatelessWidget {
  PhoneScreen({Key? key}) : super(key: key);

  var phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Enter your phone number",
                style: TextStyle(fontSize: 28, color: HexColor("#000000")),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                width: 318,
                height: 29,
                child: TextFormField(
                  controller: phoneController,
                  keyboardType: TextInputType.phone,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "please Enter your phone";
                    }
                  },
                  decoration: const InputDecoration(
                    //prefixIcon: Icon(Icons.email_outlined),
                    labelText: "phone",
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
              epButton("Use email address", EmailScreen(), context)
            ],
          ),
        ),
      ),
    );
  }
}
