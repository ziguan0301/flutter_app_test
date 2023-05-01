import 'package:flutter/material.dart';
import 'package:flutter_app_test/constants.dart';

class seven_food_pic extends StatelessWidget {
  const seven_food_pic({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          food_card(
            image: "assets/images/o-sheet0.png",
            title: "apple",
            country: "fridge",
            price: 100,
            press: (){},
          ),
          food_card(
            image: "assets/images/o-sheet0.png",
            title: "apple",
            country: "fridge",
            price: 100,
            press: (){},
          ),
          food_card(
            image: "assets/images/o-sheet0.png",
            title: "apple",
            country: "fridge",
            price: 100,
            press: (){},
          ),
        ],
      ),
    );
  }
}

class food_card extends StatelessWidget {
  const food_card({
    super.key, required this.image, required this.title, required this.country, required this.price, required this.press,
  });

  final String image, title, country;
  final int price;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        right: kDefaultPadding/2,
        bottom: kDefaultPadding /2,
      ),
      //總寬渡40%
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          Image.asset(image),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow:[
                  BoxShadow(
                    offset: Offset(0,10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "$title\n".toUpperCase(),
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                        TextSpan(
                          text: "$country".toUpperCase(),
                          style: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    '$price',
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      color: kPrimaryColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}