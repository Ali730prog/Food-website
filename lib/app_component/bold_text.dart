import 'package:flutter/material.dart';

import '../app_const/app_color.dart';

class BoldText extends StatefulWidget {
  final String title;
  final double fontsize;
  final Color? textcolor;

  const BoldText(
      {super.key,
      this.fontsize = 20,
      required this.title,
      this.textcolor = AppColor.whiteFFFFFF});

  @override
  State<BoldText> createState() => _BoldTextState();
}

class _BoldTextState extends State<BoldText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.title,
      style: TextStyle(
          color: widget.textcolor, fontWeight: FontWeight.w800, fontSize: widget.fontsize),
    );
  }
}
