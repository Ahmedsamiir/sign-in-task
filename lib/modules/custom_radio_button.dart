import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomRadioButton extends StatefulWidget {
  int value;
  int groupValue;
  Color? color;
  Color? selectColor;
  void Function(int?)? onChanged;
  CustomRadioButton({
    Key? key,
    required this.value,
    required this.groupValue,
    this.color = Colors.grey,
    this.selectColor = Colors.blue,
    this.onChanged,
  }) : super(key: key);

  @override
  State<CustomRadioButton> createState() => _CustomRadioButtonState();
}

class _CustomRadioButtonState extends State<CustomRadioButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        bool selected = widget.value != widget.groupValue;
        if (selected) {
          //send widget.value to param...
          widget.onChanged!(widget.value);
        }
      },
      child: Container(
        width: 20,
        height: 20,
        decoration: BoxDecoration(
          color: widget.value == widget.groupValue
              ? widget.selectColor
              : widget.color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
