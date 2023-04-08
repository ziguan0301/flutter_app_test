import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_app_test/login/login_page.dart';
import 'package:flutter_app_test/home/home_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          resizeToAvoidBottomInset: false,//不讓畫面因為鍵盤超出頁面
          body: HomeScreen()),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    //控制上排選單樣式
    final ButtonStyle style = TextButton.styleFrom(
      foregroundColor: Theme.of(context).colorScheme.onPrimary,
      textStyle: const TextStyle(
          fontSize: 25,
      ),
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[400],
        leading: IconButton(
          icon: Icon(
            Icons.menu,
          ),
          onPressed: () => print('按下選單'),
        ),
        elevation: 0,//
        actions: <Widget>[
          TextButton(
            style: style,
            onPressed: () {},
            child: const Text('食材管理'),
          ),
          TextButton(
            style: style,
            onPressed: () {},
            child: const Text('食譜查詢'),
          ),
          TextButton(
            style: style,
            onPressed: () {},
            child: const Text('購物清單'),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image(
              image: NetworkImage('https://stat.ameba.jp/user_images/20150609/23/makapri/97/6f/p/o0272028813332636417.png?caw=800'),
            ),
          ),
          Text('我是一隻弱小的毛毛蟲，想像有天可以成為強壯的挖土機，擁有挖掘夢想的神奇手套！')
        ],
      ),
      bottomNavigationBar: BottomAppBar(),
    );
  }
}

