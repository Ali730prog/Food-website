import 'package:flutter/material.dart';
import 'package:foodwagon/app_const/app_color.dart';

class LightText extends StatefulWidget {
  final String title;
  final Color textcolor;

  const LightText({super.key,
    required this.title,
    this.textcolor= AppColor.whiteFFFFFF,
  });

  @override
  State<LightText> createState() => _LightTextState();
}

class _LightTextState extends State<LightText> {
  @override
  Widget build(BuildContext context) {
    return Text(widget.title,
      textAlign: TextAlign.center,
      style: TextStyle(

      color: widget.textcolor,fontSize: 16.0,fontWeight: FontWeight.w500
    ),);
  }
}
