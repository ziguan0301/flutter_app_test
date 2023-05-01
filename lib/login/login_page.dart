import 'package:flutter/material.dart';
import 'package:flutter_app_test/components/my_textfield.dart';
import 'package:flutter_app_test/components/my_button.dart';
import 'package:flutter_app_test/components/square_tile.dart';
import 'package:flutter_app_test/mainpage/main_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc_components/auth_bloc.dart';



class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  // text editing controllers
  final usernameController = TextEditingController();

  // sign user in method(button)
  //void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,//不讓畫面因為鍵盤超出頁面
      backgroundColor: Colors.grey[300],
      body: SafeArea(   //解決靠邊（上、下、左、右）的地方會被遮擋
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 15),

              // logo
              const Icon(
                Icons.lock,
                size: 100,
              ),

              const SizedBox(height: 15),

              // welcome back, you've been missed!
              Text(
                'Welcome back',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 50,
                ),
              ),

              const SizedBox(height: 15),

              // username textfield
                //sign in button
              const SizedBox(height: 15),
              MyButton(
                onTap: (){
                  _authenticateWithGoogle(context);
                },
              ),
                //or continue
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'Or continue with',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),
              //google button
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  // google button
                  SquareTile(imagePath: 'assets/images/google.png',onPressed: (){_authenticateWithGoogle(context);},),
                ],
              ),
                //not a member? register now
            ],
          ),
        ),
      ),
    );
  }
}
void _authenticateWithGoogle(context) {
  BlocProvider.of<AuthBloc>(context).add(
    GoogleSignInRequested(),
  );
}