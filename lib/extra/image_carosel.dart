import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_controller.dart';

main(){
  runApp(MaterialApp(
    home: Image1(),
  ));
}
class Image1 extends StatefulWidget {
  const Image1({super.key});

  @override
  State<Image1> createState() => _Image1State();
}

class _Image1State extends State<Image1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("This is my test on the slider"),
      ),
      body:Container(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 400,
              child: CarouselSlider(
                items: [
                  'assets/images/food_dish1.png',
                  'assets/images/food_dish_2.png',
                  'assets/images/food_dish_3.png',
                ].map((item)=>Container(
                  width: 1000,height: 400,
                  child: Image.asset(item,fit: BoxFit.cover,),
                )).toList(),
                options:CarouselOptions(
                  pauseAutoPlayInFiniteScroll: true,
                  autoPlayCurve: Curves.bounceInOut,
                  autoPlay: true,
                  height: 400,
                )
                ),
              ),

          ],
        ),
      )
    );
  }
}
