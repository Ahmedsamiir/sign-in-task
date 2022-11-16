import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:registertask/Screens/name_screen.dart';
import 'package:registertask/shared/components/components.dart';

import '../shared/colors/colors.dart';

class RegisterationScreeen extends StatelessWidget {
  const RegisterationScreeen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Registation in UDrive",
                style: TextStyle(
                  fontSize: 28,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.normal,
                  color: HexColor("#000000"),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                  width: 164,
                  child: Column(
                    children: [
                      Text(
                        "We can help you create an ",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                          fontFamily: 'Roboto',
                        ),
                      ),
                      Text(
                        "account in a few steps.",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ],
                  )),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 49.0,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: defaultColor,
                  borderRadius: BorderRadius.circular(
                    3.0,
                  ),
                ),
                child: MaterialButton(
                  child: Text(
                    'Start',
                    style: TextStyle(
                        fontSize: 18,
                        color: HexColor("#FFFFFF"),
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400),
                  ),
                  onPressed: () {
                    navigateTo(context, NameScreen());
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
