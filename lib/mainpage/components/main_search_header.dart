import 'package:flutter/material.dart';
import 'package:flutter_app_test/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'main_category.dart';

class HeaderWithSearchBOx extends StatelessWidget {
  const HeaderWithSearchBOx({Key? key, required this.size}) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          height: 54,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 10),
                blurRadius: 50,
                color: kPrimaryColor.withOpacity(0.23),
              ),
            ],
          ),
          child: Row(
            children: <Widget>[
              Expanded(
                child: TextField(
                  onChanged: (value) {},
                  decoration: InputDecoration(
                    hintText: "Search",
                    hintStyle: TextStyle(
                      color: kPrimaryColor.withOpacity(0.5),
                    ),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    // surffix isn't working properly  with SVG
                    // thats why we use row
                    // suffixIcon: SvgPicture.asset("assets/icons/search.svg"),
                  ),
                ),
              ),
              SvgPicture.asset("assets/icons/search.svg"),
            ],
          ),
        ),
      ),
    );
  }
}
