import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodwagon/app_component/bold_text.dart';
import 'package:foodwagon/app_component/common_container.dart';
import 'package:foodwagon/app_component/discount_container.dart';
import 'package:foodwagon/app_component/food_container.dart';
import 'package:foodwagon/app_component/image_text.dart';
import 'package:foodwagon/app_component/item_container.dart';
import 'package:foodwagon/app_component/light_text.dart';
import 'package:foodwagon/app_component/location_container.dart';
import 'package:foodwagon/app_const/app_assets.dart';
import 'package:foodwagon/app_const/app_color.dart';

import '../app_component/search_food.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Container(
            child: Row(
              children: [],
            ),
          ),
        ),
        body: SingleChildScrollView(
            child: Container(
          child: Column(children: [
            Container(
              width: 1320,
              height: 471,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(AppAssets.background_image),
                      fit: BoxFit.cover)),
              child: Row(
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 32),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 120,
                          ),
                          BoldText(
                            title: "Are you starving",
                            fontsize: 60,
                          ),
                          LightText(
                            title:
                                "Within a few clicks, find meals that are accessible near you",
                            textcolor: AppColor.black000000,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.0),
                              color: AppColor.whiteFFFFFF,
                            ),
                            width: 886,
                            height: 196,
                            child: Padding(
                              padding: const EdgeInsets.all(24.0),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            color: AppColor.orangeF17228
                                                .withOpacity(0.6),
                                            borderRadius:
                                                BorderRadius.circular(10.0)),
                                        width: 148,
                                        height: 38,
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              AppAssets.bike,
                                              width: 23,
                                              height: 18,
                                            ),
                                            SizedBox(
                                              width: 06.0,
                                            ),
                                            LightText(
                                              title: "Delivery",
                                              textcolor: AppColor.orangeF17228,
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 20.0,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          color: AppColor.greyFCFCFC,
                                        ),
                                        width: 148,
                                        height: 38,
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              AppAssets.pickup,
                                              width: 23,
                                              height: 18,
                                            ),
                                            SizedBox(
                                              width: 06.0,
                                            ),
                                            LightText(
                                              title: "pickup",
                                              textcolor: AppColor.black000000,
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 60.0),
                                  Row(
                                    children: [
                                      Container(
                                          width: 503,
                                          height: 49.0,
                                          decoration: BoxDecoration(
                                              color: AppColor.black000000
                                                  .withOpacity(0.3),
                                              borderRadius:
                                                  BorderRadius.circular(12.0)),
                                          child: Center(
                                            child: TextField(
                                              decoration: InputDecoration(
                                                  contentPadding:
                                                      EdgeInsets.only(
                                                          top: 13.0),
                                                  hintText:
                                                      "Enter Your Address",
                                                  prefixIcon: Icon(
                                                    CupertinoIcons
                                                        .location_solid,
                                                    size: 30,
                                                    color:
                                                        AppColor.orangeF17228,
                                                  ),
                                                  hintStyle: TextStyle(
                                                    color: AppColor.black000000
                                                        .withOpacity(0.4),
                                                  ),
                                                  enabledBorder:
                                                      InputBorder.none,
                                                  focusedBorder:
                                                      InputBorder.none),
                                            ),
                                          )),
                                      SizedBox(
                                        width: 20.0,
                                      ),
                                      InkWell(
                                        onTap: () {},
                                        child: Container(
                                          width: 169,
                                          height: 49.0,
                                          decoration: BoxDecoration(
                                            color: AppColor.orangeF17228,
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          child: Center(
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  CupertinoIcons.search,
                                                  color: AppColor.whiteFFFFFF,
                                                  size: 20,
                                                ),
                                                LightText(title: "Find Food")
                                              ],
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  // SizedBox(width: 30.0,),
                  Container(
                    padding: EdgeInsets.only(top: 240),
                    // width: 200,
                    // height: 200,
                    child: Image.asset(
                      AppAssets.rice_dish,
                      width: 360,
                      height: 360,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 50.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    DiscountContainer(
                        bannerimage: "${AppAssets.food_dish}",
                        percentoff: "20",
                        dishname: "Greys Vage",
                        Days: "6 Days remaning"),
                    SizedBox(
                      width: 20.0,
                    ),
                    DiscountContainer(
                        bannerimage: "${AppAssets.food_dish1}",
                        percentoff: "10",
                        dishname: "Greys Vage",
                        Days: "3 Days remaning"),
                    SizedBox(
                      width: 20.0,
                    ),
                    DiscountContainer(
                        bannerimage: "${AppAssets.food_dish2}",
                        percentoff: "25",
                        dishname: "Greys Vage",
                        Days: "7 Days remaning"),
                    SizedBox(
                      width: 20.0,
                    ),
                    DiscountContainer(
                        bannerimage: "${AppAssets.food_dish3}",
                        percentoff: "20",
                        dishname: "Greys Vage",
                        Days: "8 Days remaning"),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Container(
              width: 1380,
              height: 418,
              decoration: BoxDecoration(
                  color: AppColor.pinke7cebf,
                  gradient: LinearGradient(
                      colors: [
                        AppColor.yellowFFCE67.withOpacity(0.5),
                        AppColor.whiteFFFFFF,
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      tileMode: TileMode.mirror)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50.0),
                    child: BoldText(
                      title: "How does it work",
                      textcolor: AppColor.orangeF17228,
                      fontsize: 30,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ImageText(
                          image: "${AppAssets.location}",
                          maintext: "Select location",
                          des:
                              "Choose the location where your food will be delivered."),
                      ImageText(
                          image: "${AppAssets.order}",
                          maintext: "Choose order",
                          des:
                              "Check over hundreds of menus to pick your favorite food"),
                      ImageText(
                          image: "${AppAssets.payment}",
                          maintext: "Payment Advance",
                          des:
                              "It's quick, safe, and simple. Select several methods of payment"),
                      ImageText(
                          image: "${AppAssets.mean}",
                          maintext: "Enjoy meals",
                          des:
                              "Food is made and delivered directly to your home."),
                    ],
                  )
                ],
              ),
            ),
            Container(
              width: 1920,
              height: 600,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 30.0,
                  ),
                  BoldText(
                    title: "Popular items",
                    textcolor: AppColor.black000000,
                    fontsize: 40.0,
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 56,
                        height: 56,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColor.orangeF17228),
                        child: Icon(
                          Icons.arrow_back_ios,
                          size: 26,
                          color: AppColor.whiteFFFFFF,
                        ),
                      ),
                      SizedBox(),
                      Expanded(
                        child: Container(
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                ItemContainer(
                                    image: "${AppAssets.burger}",
                                    title: "cheese buger",
                                    location: "Burger Area",
                                    price: "3.38"),
                                ItemContainer(
                                    image: "${AppAssets.cake}",
                                    title: "Toffe’s Cake",
                                    location: "Top sticks",
                                    price: "4.00"),
                                ItemContainer(
                                    image: "${AppAssets.dancake}",
                                    title: "Dancake",
                                    location: "Cake World",
                                    price: "1.99"),
                                ItemContainer(
                                    image: "${AppAssets.sandwitch}",
                                    title: "Crispy Sandwitch",
                                    location: "Fastfood Dine",
                                    price: "3.99"),
                                ItemContainer(
                                    image: "${AppAssets.soup}",
                                    title: "Thai  Soup",
                                    location: "Foody man",
                                    price: "2.77"),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 56,
                        height: 56,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColor.orangeF17228),
                        child: Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 26,
                          color: AppColor.whiteFFFFFF,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              height: 1050,
              width: 1476,
              child: Column(
                children: [
                  SizedBox(
                    height: 30.0,
                  ),
                  BoldText(
                    title: "Featured Restuarent",
                    textcolor: AppColor.black000000,
                    fontsize: 40.0,
                  ),
                  Expanded(
                    child: GridView(
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          crossAxisSpacing: 10.0,
                          mainAxisSpacing: 10.0,
                          mainAxisExtent: 430),
                      children: [
                        FoodContainer(
                            image: AppAssets.food_image_1,
                            off: "20",
                            logoimage: AppAssets.food_world,
                            dishnamel: "Food World",
                            rating: "46"),
                        FoodContainer(
                            image: AppAssets.food_image_2,
                            off: "15",
                            logoimage: AppAssets.pizaa_hub,
                            dishnamel: "Pizza hub",
                            rating: "40"),
                        FoodContainer(
                            image: AppAssets.food_image_3,
                            off: "10",
                            logoimage: AppAssets.sonuts_hub,
                            dishnamel: "Donuts hut",
                            rating: "20"),
                        FoodContainer(
                            image: AppAssets.food_image_4,
                            off: "15",
                            logoimage: AppAssets.donuts_hub,
                            dishnamel: "Donuts hut",
                            rating: "50"),
                        FoodContainer(
                            image: AppAssets.food_image_5,
                            off: "10",
                            logoimage: AppAssets.ruby,
                            dishnamel: "Ruby Tuesday",
                            rating: "26"),
                        FoodContainer(
                            image: AppAssets.food_image_6,
                            off: "25",
                            logoimage: AppAssets.kfc,
                            dishnamel: "Kuakata Fried Chicken",
                            rating: "53"),
                        FoodContainer(
                            image: AppAssets.food_image_7,
                            off: "10",
                            logoimage: AppAssets.red,
                            dishnamel: "Red Square",
                            rating: "45"),
                        FoodContainer(
                            image: AppAssets.food_image_8,
                            off: "10",
                            logoimage: AppAssets.taco,
                            dishnamel: "Taco Bell",
                            rating: "35"),
                      ],
                    ),
                  ),
                  CommonContainer(
                    title: "Visit All",
                    bgcolour: AppColor.yellowFFB30E,
                  )
                ],
              ),
            ),
            Container(
              width: 1924,
              height: 471,
              color: AppColor.yellowFFB30E.withOpacity(0.1),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 100, top: 50),
                    child: Row(
                      children: [
                        BoldText(
                          title: "Search by Food",
                          textcolor: AppColor.black000000,
                          fontsize: 25,
                        ),
                        SizedBox(
                          width: 700,
                        ),
                        LightText(
                          title: "View all",
                          textcolor: AppColor.yellowFFB30E,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: 46,
                            height: 46,
                            decoration: BoxDecoration(
                                color: AppColor.orangeF17228,
                                shape: BoxShape.circle),
                            child: Center(
                                child: Icon(
                              Icons.arrow_back_ios,
                              color: AppColor.whiteFFFFFF,
                            )),
                          ),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: 46,
                            height: 46,
                            decoration: BoxDecoration(
                                color: AppColor.orangeF17228,
                                shape: BoxShape.circle),
                            child: Center(
                                child: Icon(
                              Icons.arrow_forward_ios,
                              color: AppColor.whiteFFFFFF,
                            )),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  Container(
                    width: 940,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          SearchFood(
                            title: "Pizza",
                            image: "${AppAssets.pizza}",
                          ),
                          SearchFood(
                            title: "Burger",
                            image: "${AppAssets.burger1}",
                          ),
                          SearchFood(
                            title: "Noodles",
                            image: "${AppAssets.noodles}",
                          ),
                          SearchFood(
                            title: "Sub_sandwitch ",
                            image: "${AppAssets.sandwitch}",
                          ),
                          SearchFood(
                            title: "Chowmein",
                            image: "${AppAssets.chowmein}",
                          ),
                          SearchFood(
                            title: "Snacks",
                            image: "${AppAssets.snacks}",
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: 1500,
              height: 350,
              decoration: BoxDecoration(
                color: Color(0xffFEEFD0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Container(
                          width: 900,
                          height: 230,
                          decoration: BoxDecoration(
                              color: AppColor.whiteFFFFFF,
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Image.asset(
                                      "${AppAssets.percentage}",
                                      width: 100,
                                      height: 100,
                                      fit: BoxFit.contain,
                                    ),
                                    BoldText(
                                      title: "Daily \n Discount",
                                      textcolor: AppColor.orangeF17228,
                                    ),
                                  ],
                                ),
                              ),
                              VerticalDivider(
                                thickness: 3,
                                endIndent: 70,
                                indent: 70,
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    Image.asset(
                                      "${AppAssets.livetracing}",
                                      width: 100,
                                      height: 100,
                                      fit: BoxFit.contain,
                                    ),
                                    BoldText(
                                      title: "Live \n Tracing",
                                      textcolor: AppColor.orangeF17228,
                                    ),
                                  ],
                                ),
                              ),
                              VerticalDivider(
                                thickness: 3,
                                endIndent: 70,
                                indent: 70,
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    Image.asset(
                                      "${AppAssets.clock}",
                                      width: 100,
                                      height: 100,
                                      fit: BoxFit.contain,
                                    ),
                                    BoldText(
                                      title: "Quick \n Delivery",
                                      textcolor: AppColor.orangeF17228,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              width: 1924,
              height: 390,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/img.png'),
                      fit: BoxFit.contain)),
            ),
            SizedBox(
              height: 40.0,
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [AppColor.black000000, AppColor.blue2780ED],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                ),
              ),
              padding: EdgeInsets.symmetric(horizontal: 50.0),
              width: 1961,
              height: 400,
              child: Row(
                children: [
                  Container(
                    width: 350,
                    height: 300,
                    // color: Colors.red,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                            text: "Best deals",
                            style: TextStyle(
                                color: AppColor.black000000,
                                fontSize: 35.0,
                                fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: " Crispy \nSandwiches",
                            style: TextStyle(
                                color: AppColor.yellowFFCE67,
                                fontSize: 35.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ])),
                        SizedBox(
                          height: 20.0,
                        ),
                        LightText(
                          title: "Enjoy the large size of sandwiches. Complete "
                              "perfect slice of sandwiches.",
                          textcolor: AppColor.black000000,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          width: 300,
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xffFFB800),
                                  Color(0xffFF8A00),
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.topRight,
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: AppColor.yellowFFCE67,
                                    offset: Offset(0, 5),
                                    blurRadius: 10.0)
                              ]),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(
                                  child: LightText(
                                title: "Proceed to order",
                                textcolor: AppColor.whiteFFFFFF,
                              )),
                              Icon(
                                Icons.arrow_forward_ios_sharp,
                                size: 15.0,
                                color: AppColor.whiteFFFFFF,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Image.asset(
                        '${AppAssets.block_image}',
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [AppColor.black000000, AppColor.blue2780ED],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                ),
              ),
              // padding: EdgeInsets.symmetric(horizontal: 50.0),
              width: 1961,
              height: 400,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      child: Image.asset(
                        '${AppAssets.block_image2}',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      padding: EdgeInsets.only(top: 50.0),
                      width: 400,
                      height: 400,
                      // color: Colors.red,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          RichText(
                              text: TextSpan(children: [
                            TextSpan(
                              text: "Wanna eat hot \n& spicy",
                              style: TextStyle(
                                  color: AppColor.whiteFFFFFF,
                                  fontSize: 35.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: " Pizza?",
                              style: TextStyle(
                                  color: AppColor.yellowFFCE67,
                                  fontSize: 35.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ])),
                          SizedBox(
                            height: 20.0,
                          ),
                          LightText(
                            title: "Pair up with a friend and enjoy the "
                                "hot and crispy pizza pops. Try it"
                                "with the best deals.",
                            textcolor: AppColor.whiteFFFFFF,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            width: 300,
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xffFFB800),
                                    Color(0xffFF8A00),
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.topRight,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                      color: AppColor.yellowFFCE67,
                                      offset: Offset(0, 5),
                                      blurRadius: 10.0)
                                ]),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Center(
                                    child: LightText(
                                  title: "Proceed to order",
                                  textcolor: AppColor.whiteFFFFFF,
                                )),
                                Icon(
                                  Icons.arrow_forward_ios_sharp,
                                  size: 15.0,
                                  color: AppColor.whiteFFFFFF,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 100, vertical: 100),
              width: 1900,
              height: 740,
              color: AppColor.black000000,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  BoldText(
                    title: "Our Top cities",
                    fontsize: 15.0,
                  ),
                  Row(
                    children: [
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 20.0,
                            ),
                            LightText(
                              title: "San Francisco",
                            ),
                            SizedBox(
                              height: 05.0,
                            ),
                            LightText(title: "Miami"),
                            SizedBox(
                              height: 05.0,
                            ),
                            LightText(title: "San Diego"),
                            SizedBox(
                              height: 05.0,
                            ),
                            LightText(title: "East Bay"),
                            SizedBox(
                              height: 05.0,
                            ),
                            LightText(title: "Long Beach"),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 136,
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 20.0,
                            ),
                            LightText(
                              title: "Los Angeles",
                            ),
                            SizedBox(
                              height: 05.0,
                            ),
                            LightText(title: "Washington DC"),
                            SizedBox(
                              height: 05.0,
                            ),
                            LightText(title: "Seattle"),
                            SizedBox(
                              height: 05.0,
                            ),
                            LightText(title: "Portland"),
                            SizedBox(
                              height: 05.0,
                            ),
                            LightText(title: "Nashville"),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 136,
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 20.0,
                            ),
                            LightText(
                              title: "New York City",
                            ),
                            SizedBox(
                              height: 05.0,
                            ),
                            LightText(title: "Orange County"),
                            SizedBox(
                              height: 05.0,
                            ),
                            LightText(title: "Atlanta"),
                            SizedBox(
                              height: 05.0,
                            ),
                            LightText(title: "Charlotte"),
                            SizedBox(
                              height: 05.0,
                            ),
                            LightText(title: "Denver"),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 136,
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 20.0,
                            ),
                            LightText(
                              title: "Chicago",
                            ),
                            SizedBox(
                              height: 05.0,
                            ),
                            LightText(title: "Phoenix"),
                            SizedBox(
                              height: 05.0,
                            ),
                            LightText(title: "Las Vegas"),
                            SizedBox(
                              height: 05.0,
                            ),
                            LightText(title: "Sacramento"),
                            SizedBox(
                              height: 05.0,
                            ),
                            LightText(title: "Oklahoma City"),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 136,
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 20.0,
                            ),
                            LightText(
                              title: "Columbus",
                            ),
                            SizedBox(
                              height: 05.0,
                            ),
                            LightText(title: "New Mexico"),
                            SizedBox(
                              height: 05.0,
                            ),
                            LightText(title: "Albuquerque"),
                            SizedBox(
                              height: 05.0,
                            ),
                            LightText(title: "Sacramento"),
                            SizedBox(
                              height: 05.0,
                            ),
                            LightText(title: "New Orleans"),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Divider(
                    thickness: 1,
                    color: AppColor.greyFCFCFC.withOpacity(0.5),
                  ),
                  Row(
                    children: [
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            BoldText(
                              title: "Company",
                              fontsize: 15.0,
                              textcolor: AppColor.yellowFFCE67,
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            LightText(
                              title: "About us",
                            ),
                            SizedBox(
                              height: 05.0,
                            ),
                            LightText(title: "Team"),
                            SizedBox(
                              height: 05.0,
                            ),
                            LightText(title: "Careers"),
                            SizedBox(
                              height: 05.0,
                            ),
                            LightText(title: "Blog"),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 136,
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            BoldText(
                              title: "Contact",
                              fontsize: 15.0,
                              textcolor: AppColor.yellowFFCE67,
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            LightText(
                              title: "Help & Support",
                            ),
                            SizedBox(
                              height: 05.0,
                            ),
                            LightText(title: "Partner with us "),
                            SizedBox(
                              height: 05.0,
                            ),
                            LightText(title: "Ride with us"),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 136,
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            BoldText(
                              title: "Legal",
                              fontsize: 15.0,
                              textcolor: AppColor.yellowFFCE67,
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            LightText(
                              title: "Terms & Conditions",
                            ),
                            SizedBox(
                              height: 05.0,
                            ),
                            LightText(title: "Refund & Cancellation "),
                            SizedBox(
                              height: 05.0,
                            ),
                            LightText(title: "Privacy Policy"),
                            SizedBox(
                              height: 05.0,
                            ),
                            LightText(title: "Cookie Policy"),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 126,
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(height: 20.0,),
                            BoldText(title: "Follow Us",textcolor: AppColor.greyFCFCFC,),
                            SizedBox(height: 20,),
                            Row(
                              children: [
                                Container(
                                  width: 20,height: 20,child: Image.asset('assets/images/img_1.png'),
                                ),
                                SizedBox(width: 10,),
                                Container(
                                  width: 20,height: 20,child: Image.asset('assets/images/img_2.png'),
                                ),SizedBox(width: 10,),
                                Container(
                                  width: 20,height: 20,child: Image.asset('assets/images/img_3.png'),
                                ),SizedBox(width: 10),
                              ],
                            ),
                            SizedBox(height: 20.0,),
                            LightText(title: "Receive exclusive offers in your mailbox"),
                            SizedBox(height: 20.0,),
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 20.0),
                                  width: 224,
                                  height: 60,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      prefixIcon: Icon(Icons.mail,size: 30,),
                                      hintText: "Enter your Email",enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 1,color: AppColor.orangeF17228),
                                    )
                                    ),
                                  ),
                                ),SizedBox(width: 20,),
                                InkWell(
                                  onTap: (){

                                  },
                                  child: Container(
                                    width: 90,
                                    height: 50,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10.0),
                                        gradient: LinearGradient(
                                          colors: [
                                            Color(0xffFFB800),
                                            Color(0xffFF8A00),
                                          ],
                                          begin: Alignment.topLeft,
                                          end: Alignment.topRight,
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                              color: AppColor.yellowFFCE67,
                                              offset: Offset(0, 5),
                                              blurRadius: 10.0)
                                        ]),
                                    child: Center(
                                        child: LightText(
                                          title: "Submit",
                                          textcolor: AppColor.whiteFFFFFF,
                                        )),
                                  ),
                                )
                              ],
                            ),

                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 30.0,),
                  Divider(thickness: 1,color: AppColor.greyFCFCFC.withOpacity(0.4),),
                  Row(
                    children: [
                      LightText(title: "All rights Reserved"),
                      SizedBox(width: 10.0,),
                      BoldText(title: "@ AH Coder"),
                      Spacer(),
                      BoldText(title: "Made by the ",fontsize: 20,),
                      BoldText(title: "Ali Hasnain",textcolor: AppColor.orangeF17228,),
                    ],
                  )
                ],
              ),
            ),
          ]),
        )));
  }
}
