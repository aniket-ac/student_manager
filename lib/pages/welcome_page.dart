import 'package:flutter/material.dart';
import 'package:student_manager/constants.dart';
import 'package:student_manager/components/rounded_button.dart';
//import 'package:student_manager/login_page.dart';

class WelcomePage extends StatefulWidget {
  @override
  State<WelcomePage> createState() => _LoginPageState();
}

class _LoginPageState extends State<WelcomePage> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Hero(
              tag: mainLogo,
              child: const FadingAnimation(
                sizeOfFont: 55.0,
                heightOfText: 400.0,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              LogNRegister(
                choice: 'Login',
                route: login,
              ),
              LogNRegister(
                choice: 'Register',
                route: register,
              ),
            ],
          ),
        ],
      )),
    );
  }
}
