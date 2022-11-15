import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../colors/colors.dart';

void navigateTo(context, widget) => Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
    );

Widget myDivider() => Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            width: 128,
            height: 0.5,
            color: HexColor("#000000"),
          ),
        ),
        Text(
          "OR",
          style: TextStyle(color: HexColor("#000000")),
        ),
        Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: 128,
              height: 0.5,
              color: HexColor("#000000"),
            )),
      ],
    );

Widget divider() => Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: double.infinity,
        height: 0.5,
        color: Colors.grey,
      ),
    );

Widget sharedButton(String text, Widget widget, BuildContext context) =>
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
          text,
          style: TextStyle(fontSize: 18, color: HexColor("#FFFFFF")),
        ),
        onPressed: () => navigateTo(context, widget),
      ),
    );

Widget epButton(String text, Widget widget, BuildContext context) => Container(
      height: 36.0,
      width: double.infinity,
      decoration: BoxDecoration(
        color: HexColor("#FFFFFF"),
        borderRadius: BorderRadius.circular(
          3.0,
        ),
        border: Border.all(color: HexColor("#000000")),
      ),
      child: MaterialButton(
        child: Text(
          text,
          style: TextStyle(fontSize: 18, color: HexColor("#000000")),
        ),
        onPressed: () => navigateTo(context, widget),
      ),
    );
