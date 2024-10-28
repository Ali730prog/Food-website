import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodwagon/app_component/bold_text.dart';
import 'package:foodwagon/app_component/common_container.dart';
import 'package:foodwagon/app_component/light_text.dart';
import 'package:foodwagon/app_const/app_assets.dart';
import 'package:foodwagon/app_const/app_color.dart';

class FoodContainer extends StatefulWidget {
  final String image;
  final String off;
  final String logoimage;
  final String dishnamel;
  final Color? containercolor;
  final String rating;

  const FoodContainer(
      {super.key,
      required this.image,
        this.containercolor=AppColor.yellowFFCE67,
      required this.off,
      required this.logoimage,
      required this.dishnamel,
      required this.rating});

  @override
  State<FoodContainer> createState() => _FoodContainerState();
}

class _FoodContainerState extends State<FoodContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 307,
      height: 433,
      // color: ,
      child: Column(children: [
        Container(
          child: Stack(
            children: [
              Image.asset(
                '${widget.image}',
                width: 305,
                height: 301,
              ),
              Positioned(
                top: 30.0,right: 25.0,
                child: Row(
                  children: [
                    Container(
                      width: 104,
                      height: 36,
                      decoration: BoxDecoration(
                          color: AppColor.orangeF17228,
                          borderRadius: BorderRadius.circular(08)),
                      child: Center(
                          child: LightText(
                              title: "${widget.off}% off",
                              textcolor: AppColor.whiteFFFFFF)),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Container(
                      width: 104,
                      height: 36,
                      decoration: BoxDecoration(
                          color: AppColor.yellowFFB30E,
                          borderRadius: BorderRadius.circular(08)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            CupertinoIcons.clock_fill,
                            color: AppColor.whiteFFFFFF,
                            size: 16,
                          ),
                          SizedBox(
                            width: 05.0,
                          ),
                          LightText(
                              title: "fast", textcolor: AppColor.whiteFFFFFF),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Row(
          children: [
            Container(
              width: 44,
              height: 44,
              child: Image.asset('${widget.logoimage}'),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                BoldText(
                  title: "${widget.dishnamel}",
                  textcolor: AppColor.black000000,
                ),
                Row(
                  children: [
                    Icon(
                      CupertinoIcons.star_fill,
                      color: AppColor.orangeF17228,
                    ),
                    SizedBox(
                      width: 03,
                    ),
                    LightText(
                      title: "${widget.rating}",
                      textcolor: AppColor.orangeF17228,
                    )
                  ],
                )
              ],
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 50),
          child: CommonContainer(
            title: "Open Now",
            ontap: () {},
            bgcolour: AppColor.green79B93C.withOpacity(0.30),
          ),
        )
      ]),
    );
  }
}
