import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_test/main.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../colors.dart';
import '../../login/bloc_components/auth_bloc.dart';
import '../../login/login_page.dart';
import 'package:flutter_app_test/login/components/my_button.dart';

import '../components/set_Button.dart';
import '../home_page.dart';
import 'fridge_edit/fridge_edit_page.dart';
class ActionPage extends StatefulWidget {
  const ActionPage({Key? key}) : super(key: key);

  @override
  State<ActionPage> createState() => _ActionPageState();
}

class _ActionPageState extends State<ActionPage> {
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: kHomeBackgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading:IconButton(
          icon: Image.asset("assets/icons/back.png"),
          onPressed: (){
            Navigator.pop(context);
          },
        ) ,
        title: const Text('設定',style: TextStyle(color:Colors.black,fontWeight: FontWeight.bold,
          fontSize: 30,),),
      ),
      body: SafeArea(
        child: Column(
          children: [
            /*Text(
              'Email: \n ${user.email}',
              style: const TextStyle(fontSize: 24),
              textAlign: TextAlign.center,
            ),*/
            const SizedBox(height: kDefaultPadding),
            user.photoURL != null
                ? Image.network("${user.photoURL}")
                : Container(),
            user.displayName != null
                ? Text("${user.displayName}",style: const TextStyle(fontSize: 16),)
                : Container(),
            const SizedBox(height: 16),
            SetButton(onTap: (){
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => FridgesPage()),
              );
            }, string: "冰箱編輯", imagepath: 'assets/icons/edit.png'),
            SetButton(onTap: (){
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            }, string: "我的收藏", imagepath: 'assets/icons/Vector.png'),
            SetButton(onTap: (){
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            }, string: "我的帳號", imagepath: 'assets/icons/folder.png'),
            SetButton(onTap: (){
              context.read<AuthBloc>().add(SignOutRequested());
            }, string: "登出帳號", imagepath: 'assets/icons/arrow-left-circle.png'),
            /*ElevatedButton(
              child: const Text('Sign Out'),
              onPressed: () {
                // Signing out the user
                context.read<AuthBloc>().add(SignOutRequested());
              },
            ),*/
          ],
        ),
      ),
    );
  }
}