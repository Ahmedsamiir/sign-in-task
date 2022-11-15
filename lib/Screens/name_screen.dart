import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:registertask/Screens/birth_screen.dart';

import '../shared/colors/colors.dart';
import '../shared/components/components.dart';

class NameScreen extends StatelessWidget {
  NameScreen({Key? key}) : super(key: key);

  var nameController = TextEditingController();
  var surnameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "What\'s your name?",
                style: TextStyle(fontSize: 28, color: HexColor("#000000")),
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(
                children: [
                  Container(
                    width: 145,
                    height: 49,
                    child: TextFormField(
                      controller: nameController,
                      keyboardType: TextInputType.name,
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "please Enter your Name";
                        }
                      },
                      decoration: const InputDecoration(
                        //prefixIcon: Icon(Icons.email_outlined),
                        labelText: "Name",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: 145,
                    height: 49,
                    child: TextFormField(
                      controller: surnameController,
                      keyboardType: TextInputType.name,
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "please Enter your Surname";
                        }
                      },
                      decoration: const InputDecoration(
                        //prefixIcon: Icon(Icons.email_outlined),
                        labelText: "Surname",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              Column(
                children: [
                  Text(
                    "If you use your real name it will be",
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                  Text(
                    "easier for friends to find you",
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              Container(
                height: 36.0,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: defaultColor,
                  borderRadius: BorderRadius.circular(
                    3.0,
                  ),
                ),
                child: MaterialButton(
                  child: Text(
                    'Next',
                    style: TextStyle(fontSize: 18, color: HexColor("#FFFFFF")),
                  ),
                  onPressed: () {
                    navigateTo(context, BirthScreen());
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
