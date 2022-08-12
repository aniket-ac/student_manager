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
    return  Scaffold(
      body:
      SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Hero(
                tag: mainLogo,
                child: const FadingAnimation(sizeOfFont: 60.0,heightOfText: 400.0,),
            ),
            const SizedBox(height: 10.0,),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, login);
                },
              child: const Padding(
                padding: EdgeInsets.all(50.0),
                child: Text(
                  '- T a p   t o   e n t e r . -',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        )
      ),
    );
  }
}

