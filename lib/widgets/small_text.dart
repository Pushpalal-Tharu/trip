// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  double height;

  SmallText({
    Key? key,
    this.color,
    required this.text,
    this.size = 12,
    this.height = 1.2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Color.fromARGB(255, 34, 32, 52).withOpacity(0.6),
        fontSize: size,
        height: height,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
