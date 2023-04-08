import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[400],
          title: Text('hello world'),
        ),
        body: Center(
          child: Image(
            image: NetworkImage('https://stat.ameba.jp/user_images/20150609/23/makapri/97/6f/p/o0272028813332636417.png?caw=800'),
          ),
        ),
      ),
    );
  }
}