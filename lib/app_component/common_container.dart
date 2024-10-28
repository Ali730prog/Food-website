import 'package:flutter/material.dart';
import 'package:foodwagon/app_component/bold_text.dart';

import '../app_const/app_color.dart';

class CommonContainer extends StatefulWidget {
  final double? width;
  final double? hight;
  final Color textcolor;
  final String title;
  final Color? bgcolour;
  final Function? ontap;

  const CommonContainer(
      {super.key,
      this.width=204,
        this.textcolor= AppColor.whiteFFFFFF,
      this.hight=42,
      required this.title,
      this.ontap,
        this.bgcolour= AppColor.pinke7cebf,

      });

  @override
  State<CommonContainer> createState() => _CommonContainerState();
}

class _CommonContainerState extends State<CommonContainer> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.ontap;
      },
      child: Container(
        width: widget.width,
        height: widget.hight,
        decoration: BoxDecoration(
          color: widget.bgcolour,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(child: BoldText(title: widget.title,textcolor: widget.textcolor,)),
      ),
    );
  }
}
