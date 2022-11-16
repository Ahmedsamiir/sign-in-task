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
  var otherController = TextEditingController();
  int _value = 1;

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
                "Please enter your gender",
                style: TextStyle(
                    fontSize: 28,
                    color: HexColor("#000000"),
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.normal),
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Male",
                    style: TextStyle(
                        fontSize: 14,
                        color: HexColor("#000000"),
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.normal),
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
                    style: TextStyle(
                        fontSize: 14,
                        color: HexColor("#000000"),
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.normal),
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
                        style: TextStyle(
                            fontSize: 14,
                            color: HexColor("#000000"),
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.normal),
                      ),
                      Text(
                        "Select 'Other' to specify a different gender ",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w200),
                      ),
                      Text(
                        ", or if you don\'t want to specify it",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w200),
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
                          if (_value == 3) {
                            Column(
                              children: [
                                SizedBox(
                                  height: 20.0,
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 36,
                                  child: TextFormField(
                                    controller: otherController,
                                    keyboardType: TextInputType.name,
                                    validator: (val) {
                                      if (val!.isEmpty) {
                                        return "please Enter your gender";
                                      }
                                    },
                                    decoration: const InputDecoration(
                                      //prefixIcon: Icon(Icons.email_outlined),
                                      labelText: "Gender",
                                      border: OutlineInputBorder(),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),
                              ],
                            );
                          }
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
