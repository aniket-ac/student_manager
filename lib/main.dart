import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:student_manager/pages/announcement.dart';
import 'package:student_manager/pages/login_page.dart';
import 'package:student_manager/pages/result_page.dart';
import 'package:student_manager/pages/setting.dart';
import 'package:student_manager/pages/time_table.dart';
import 'firebase_options.dart';
import 'pages/welcome_page.dart';
import 'package:student_manager/constants.dart';
import 'pages/menu_page.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void setupFirebase() async{
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

  }
  @override
  Widget build(BuildContext context) {
    // setupFirebase();
    return MaterialApp(
      theme: ThemeData.dark(),
      initialRoute: welcomePage,
      routes: {
        welcomePage : (context) => WelcomePage(),
        login : (context) => const LoginPage(),
        menuPage : (context) => MenuPage(),
        timeTable : (context) => TimeTable(),
        setPage : (context) => SettingPage(),
        announce : (context) => Announcement(),
        resultPage : (context) => ResultPage(),
      },
    );
  }
}






