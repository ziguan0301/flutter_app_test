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
          TitleWithMorebtn(title: "剩七天", press: () {}),
          seven_food_pic(),
          TitleWithMorebtn(title: "剩十四天", press: () {}),
          seven_food_pic(),
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
    return const Placeholder();
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


