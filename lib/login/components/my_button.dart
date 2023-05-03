import 'package:flutter/material.dart';
import 'package:flutter_app_test/login/components/square_tile.dart';

class MyButton extends StatelessWidget {
  final Function()? onTap;

  const MyButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding:  EdgeInsets.only(left: screenSize.width/8,right: screenSize.width/8,top: 10,bottom: 10),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(16),
          color: Colors.grey[200],
        ),
        child: Center(
          child: Row(
            children: <Widget>[
              IconButton(
                onPressed:(){},
                icon: Image.asset('assets/images/google.png'),
              ),
              SizedBox(width: 20,),
              Text(
                "With Google",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}