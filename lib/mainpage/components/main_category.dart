import 'package:flutter/material.dart';
import 'package:flutter_app_test/colors.dart';
import 'package:flutter_app_test/mainpage/components/foodstitle_with_more_btn.dart';
import 'package:flutter_app_test/mainpage/components/main_foods_pic.dart';

class foodmanager extends StatefulWidget {
  const foodmanager({Key? key}) : super(key: key);

  @override
  State<foodmanager> createState() => _foodmanagerState();
}

class _foodmanagerState extends State<foodmanager> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Column(
            children: <Widget>[
              TitleWithMorebtn(title: "即將到期", press: () {}),
              seven_food_pic(
                title: ["apple","Tree","computer"],
                date: ["2023-05-08","2023-05-08","2023-05-08"],
                number: 10000,
                press: (){},
                image: [
                  'https://waapple.org/wp-content/uploads/2021/06/Variety_Cosmic-Crisp-transparent-658x677.png',
                  'https://helpx.adobe.com/content/dam/help/en/photoshop/using/convert-color-image-black-white/jcr_content/main-pars/before_and_after/image-before/Landscape-Color.jpg',
                  'https://picsum.photos/250?image=9',
                ],
              ),
            ],
          ),
          Column(
            children: [
              TitleWithMorebtn(title: "七天後到期", press: () {}),
              seven_food_pic(
                title: ["apple","Tree","computer"],
                date: ["2023-05-08","2023-05-08","2023-05-08"],
                number: 100,
                press: (){},
                image: [
                  'https://waapple.org/wp-content/uploads/2021/06/Variety_Cosmic-Crisp-transparent-658x677.png',
                  'https://helpx.adobe.com/content/dam/help/en/photoshop/using/convert-color-image-black-white/jcr_content/main-pars/before_and_after/image-before/Landscape-Color.jpg',
                  'https://picsum.photos/250?image=9',
                ],
              ),
            ],
          ),
          //seven_food_pic(),
          Column(
            children: [
              TitleWithMorebtn(title: "十四天後到期", press: () {}),
              seven_food_pic(
                title: ["apple","Tree","computer"],
                date: ["2023-05-08","2023-05-08","2023-05-08"],
                number: 100,
                press: (){},
                image: [
                  'https://waapple.org/wp-content/uploads/2021/06/Variety_Cosmic-Crisp-transparent-658x677.png',
                  'https://helpx.adobe.com/content/dam/help/en/photoshop/using/convert-color-image-black-white/jcr_content/main-pars/before_and_after/image-before/Landscape-Color.jpg',
                  'https://picsum.photos/250?image=9',
                ],
              ),
            ],
          ),
          //seven_food_pic(),
          Column(
            children: [
              TitleWithMorebtn(title: "一個月後到期", press: () {}),
              seven_food_pic(
                title: ["apple","Tree","computer"],
                date: ["2023-05-08","2023-05-08","2023-05-08"],
                number: 100,
                press: (){},
                image: [
                  'https://waapple.org/wp-content/uploads/2021/06/Variety_Cosmic-Crisp-transparent-658x677.png',
                  'https://helpx.adobe.com/content/dam/help/en/photoshop/using/convert-color-image-black-white/jcr_content/main-pars/before_and_after/image-before/Landscape-Color.jpg',
                  'https://picsum.photos/250?image=9',
                ],
              ),
            ],
          ),
          //seven_food_pic(),
        ],
      ),
    );
  }
}

class recipesearch extends StatefulWidget {
  const recipesearch({Key? key}) : super(key: key);

  @override
  State<recipesearch> createState() => _recipesearchState();
}

class _recipesearchState extends State<recipesearch> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            child: Text("食譜"),
          ),
          Container(
            child: Text("食譜字"),
          ),
        ],
      ),
    );
  }
}

class shoppinglist extends StatefulWidget {
  const shoppinglist({Key? key}) : super(key: key);

  @override
  State<shoppinglist> createState() => _shoppinglistState();
}

class _shoppinglistState extends State<shoppinglist> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}


