import 'package:flutter/material.dart';
import 'package:foodwagon/app_component/bold_text.dart';
import 'package:foodwagon/app_component/common_container.dart';
import 'package:foodwagon/app_const/app_assets.dart';
import 'package:foodwagon/app_const/app_color.dart';

class DiscountContainer extends StatefulWidget {
  final String bannerimage;
  final String percentoff;
  final String dishname;
  final String Days;

  const DiscountContainer({super.key,
    required this.bannerimage,
    required this.percentoff,
    required this.dishname,
    required this.Days});

  @override
  State<DiscountContainer> createState() => _DiscountContainerState();
}

class _DiscountContainerState extends State<DiscountContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 306,
        height: 375,
        decoration: BoxDecoration(
          color: AppColor.whiteFFFFFF,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0)
              ),
              width: 357,
              height: 261,
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      widget.bannerimage,
                      width: 357,
                      height: 301,
                    ),
                  ),
                  Positioned(
                    top: 178,
                    child: Container(
                      width: 140,
                      height: 83,
                      decoration: BoxDecoration(
                          color: AppColor.yellowFFB30E,
                          borderRadius:
                              BorderRadius.only(topRight: Radius.circular(40))),
                      child: Row(
                        children: [
                          Center(
                              child: BoldText(
                            title: widget.percentoff,
                            textcolor: AppColor.blue2780ED,
                            fontsize: 50,
                          )),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(
                                  child: BoldText(
                                title: '%',
                                textcolor: AppColor.blue2780ED,
                                fontsize: 28,
                              )),
                              Center(
                                  child: BoldText(
                                title: 'Off',
                                textcolor: AppColor.blue2780ED,
                              )),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: BoldText(title: widget.dishname,fontsize: 30.0,textcolor: AppColor.yellowFFB30E,),
            ),
            SizedBox(
              height: 10.0,
            ),
Padding(
  padding: const EdgeInsets.only(left: 20.0),
  child: CommonContainer(title:widget.Days),
)
          ],
        ));
  }
}
