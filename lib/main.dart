import 'package:flutter/material.dart';
import 'package:foodwagon/app_screen/home_screen.dart';

main(){
  runApp(MaterialApp(home: Foodwagon(),));
}
class Foodwagon extends StatefulWidget {
  const Foodwagon({super.key});

  @override
  State<Foodwagon> createState() => _FoodwagonState();
}

class _FoodwagonState extends State<Foodwagon> {
  @override
  Widget build(BuildContext context) {
    return HomeScreen();
  }
}
