import 'package:flutter/material.dart';
import 'package:student_manager/pages/announcement.dart';
import 'package:student_manager/pages/login_page.dart';
import 'package:student_manager/pages/result_page.dart';
import 'package:student_manager/pages/setting.dart';
import 'package:student_manager/pages/time_table.dart';
import 'pages/welcome_page.dart';
import 'package:student_manager/constants.dart';
import 'pages/menu_page.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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






