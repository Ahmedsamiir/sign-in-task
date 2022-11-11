import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../shared/colors/colors.dart';

class BirthScreen extends StatefulWidget {
  BirthScreen({Key? key}) : super(key: key);

  @override
  State<BirthScreen> createState() => _BirthScreenState();
}

class _BirthScreenState extends State<BirthScreen> {
  DateTime dateTime = DateTime.now();

  var birthControllor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "When is your Birthday?",
                  style: TextStyle(fontSize: 28, color: HexColor("#000000")),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Column(
                  children: [
                    Text(
                      "In your profile, you can specify",
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    Text(
                      "who will see it",
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.0,
                ),
                TextFormField(
                  controller: birthControllor,
                  keyboardType: TextInputType.name,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "please Enter your Birthday";
                    }
                  },
                  decoration: const InputDecoration(
                    //prefixIcon: Icon(Icons.email_outlined),
                    labelText: "Your Birth",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 20.0,
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
                      style:
                          TextStyle(fontSize: 18, color: HexColor("#FFFFFF")),
                    ),
                    onPressed: () {
                      //  navigateTo(context, BirthScreen());
                    },
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                SizedBox(
                  height: 180,
                  child: CupertinoDatePicker(
                    minimumYear: 1970,
                    maximumYear: DateTime.now().year,
                    initialDateTime: dateTime,
                    mode: CupertinoDatePickerMode.date,
                    onDateTimeChanged: (DateTime newDateTime) {
                      setState(() {
                        dateTime = newDateTime;
                        //birthControllor.text = dateTime.toString();
                      });
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
