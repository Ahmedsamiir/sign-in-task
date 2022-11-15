import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:registertask/Screens/phone_screen.dart';
import 'package:registertask/modules/custom_radio_button.dart';
import 'package:registertask/shared/components/components.dart';

class GenderScreen extends StatefulWidget {
  const GenderScreen({Key? key}) : super(key: key);

  @override
  State<GenderScreen> createState() => _GenderScreenState();
}

class _GenderScreenState extends State<GenderScreen> {
  int _value = 1;
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
                "Please enter your gender",
                style: TextStyle(fontSize: 28, color: HexColor("#000000")),
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Male",
                    style: TextStyle(fontSize: 14, color: HexColor("#000000")),
                  ),
                  Spacer(),
                  Container(
                    height: 30,
                    decoration: BoxDecoration(
                        //borderRadius: BorderRadius.circular(10.0),
                        shape: BoxShape.circle,
                        color: Colors.black),
                    child: CustomRadioButton(
                      value: 1,
                      groupValue: _value,
                      onChanged: (int? value) {
                        setState(() {
                          _value = value!;
                        });
                      },
                    ),
                  ),
                ],
              ),
              divider(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Female",
                    style: TextStyle(fontSize: 14, color: HexColor("#000000")),
                  ),
                  Spacer(),
                  Container(
                    height: 30,
                    decoration: BoxDecoration(
                        //borderRadius: BorderRadius.circular(10.0),
                        shape: BoxShape.circle,
                        color: Colors.black),
                    child: CustomRadioButton(
                      value: 2,
                      groupValue: _value,
                      onChanged: (int? value) {
                        setState(() {
                          _value = value!;
                        });
                      },
                    ),
                  ),
                ],
              ),
              divider(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Others",
                        style:
                            TextStyle(fontSize: 14, color: HexColor("#000000")),
                      ),
                      Text(
                        "Select 'Other' to specify a different gender, or ",
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                      Text(
                        "if you don\'t want to specify it",
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ],
                  ),
                  Spacer(),
                  Container(
                    height: 30,
                    decoration: BoxDecoration(
                        //borderRadius: BorderRadius.circular(10.0),
                        shape: BoxShape.circle,
                        color: Colors.black),
                    child: CustomRadioButton(
                      value: 3,
                      groupValue: _value,
                      onChanged: (int? value) {
                        setState(() {
                          _value = value!;
                        });
                      },
                    ),
                  ),
                ],
              ),
              divider(),
              SizedBox(
                height: 10.0,
              ),
              sharedButton("Next", PhoneScreen(), context)
            ],
          ),
        ),
      ),
    );
  }
}
