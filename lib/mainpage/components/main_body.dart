import 'package:flutter/material.dart';
import 'package:flutter_app_test/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_app_test/mainpage/components/main_header.dart';
import 'package:flutter_app_test/mainpage/components/title_with_more_btn.dart';
import 'package:flutter_app_test/mainpage/components/main_foods_pic.dart';

import 'main_category.dart';

class MainBody extends StatelessWidget {
  const MainBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[

        SizedBox(height: kDefaultPadding),
      ],
    );
  }
}

