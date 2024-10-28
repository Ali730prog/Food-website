import 'package:flutter/material.dart';
import 'package:foodwagon/app_component/bold_text.dart';
import 'package:foodwagon/app_component/common_container.dart';
import 'package:foodwagon/app_component/light_text.dart';
import 'package:foodwagon/app_const/app_assets.dart';
import 'package:foodwagon/app_const/app_color.dart';

class ItemContainer extends StatefulWidget {
  final String image;
  final String title;
  final String location;
  final String price;

  const ItemContainer(
      {super.key,
      required this.image,
      required this.title,
      required this.location,
      required this.price});

  @override
  State<ItemContainer> createState() => _ItemContainerState();
}

class _ItemContainerState extends State<ItemContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 283,
      height: 469,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            width: 283,
            height: 283,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
                child: Image.asset(widget.image)),
          ),
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: BoldText(title: widget.title,textcolor: AppColor.black000000,),
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            children: [
              Image.asset(
                AppAssets.location,
                width: 30,
                height: 30,
                fit: BoxFit.cover,
              ),
              SizedBox(
                width: 05,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: LightText(title: widget.location,textcolor: AppColor.orangeF17228,),
              ),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: LightText(title: '\$ ${widget.price}',textcolor: AppColor.black000000,),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: CommonContainer(
              title: "Order Now",
              bgcolour: AppColor.orangeF17228,
            ),
          )
        ],
      ),
    );
  }
}
