import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:student_manager/constants.dart';
import 'package:student_manager/components/rounded_button.dart';

import '../firebase_options.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);


  @override
  State<RegistrationPage> createState() => _RegistrationPage();
}

class _RegistrationPage extends State<RegistrationPage> {

  final _email = TextEditingController();
  final _password = TextEditingController();
  void _signIn (String email, String pass, BuildContext context) async{
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
    // await FirebaseAuth.instance.useAuthEmulator("localhost", 9099);

    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: email,
          password: pass
      );
      Navigator.pushNamed(context, menuPage);
    } on FirebaseAuthException catch (e) {
      debugPrint(e.message);
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        body: ListView(
          padding: EdgeInsets.all(20.0),
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(30.0),
                child: Hero(
                    tag: mainLogo,
                    child:  Logo(30.0,250.0),
                ),
              ),
              Center(
                child: Text(
                  'REGISTER',
                  style: TextStyle(
                    fontFamily: fontRighteous,
                    fontSize: 50.0,
                    color: Colors.blue,
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  controller: _email,
                  decoration: const InputDecoration(
                    hintText: 'Email',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0))
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  controller: _password,
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: 'Password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0))
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red[900]),
                ),
                child: const Text('Register'),
                onPressed: () {
                  _signIn(_email.text, _password.text, context);

                },
              ),
            ],
          ),
        ),
    );
  }
}