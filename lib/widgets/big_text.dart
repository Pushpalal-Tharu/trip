// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  TextOverflow overflow;

  BigText({
    Key? key,
    this.color = const Color(0xFF222034),
    required this.text,
    this.size = 18,
    this.overflow = TextOverflow.ellipsis,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      maxLines: 1,
      style: TextStyle(
        color: color,
        fontWeight: FontWeight.w600,
        fontStyle: FontStyle.normal,
        fontSize: size,
        letterSpacing: 0.18,
      ),
    );
  }
}
