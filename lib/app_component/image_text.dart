import 'package:flutter/material.dart';
import 'package:foodwagon/app_component/bold_text.dart';
import 'package:foodwagon/app_component/light_text.dart';
import 'package:foodwagon/app_const/app_color.dart';


class ImageText extends StatefulWidget {
  final String image;
  final String maintext;
  final String des;
  const ImageText({super.key, required this.image, required this.maintext, required this.des});

  @override
  State<ImageText> createState() => _ImageTextState();
}

class _ImageTextState extends State<ImageText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      width: 280,
      height: 249,
      child: Column(
        children: [
          SizedBox(height: 10.0,),
          Image.asset(widget.image,   width: 107,
            height: 102,fit: BoxFit.cover,),
          SizedBox(height: 10.0,),
          BoldText(title: widget.maintext,textcolor: AppColor.black000000,),
          SizedBox(height: 10.0,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Center(child: LightText(title: widget.des,textcolor: AppColor.black000000.withOpacity(0.6),)),
          )
        ],
      ),
    );
  }
}
