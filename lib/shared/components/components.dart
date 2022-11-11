import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

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
            )),
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
