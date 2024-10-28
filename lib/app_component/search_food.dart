import 'package:flutter/material.dart';
import 'package:foodwagon/app_component/light_text.dart';
import 'package:foodwagon/app_const/app_color.dart';

class SearchFood extends StatefulWidget {
  final String image;
  final String title;

  const SearchFood({super.key, required this.image, required this.title});

  @override
  State<SearchFood> createState() => _SearchFoodState();
}

class _SearchFoodState extends State<SearchFood> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: [
          Container(
            width: 218,
            height: 218,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(150),
                child: Image.asset(widget.image)),
          ),
          SizedBox(height: 20.0,),
          LightText(title: widget.title, textcolor: AppColor.black000000,)
        ],
      ),
    );
  }
}
