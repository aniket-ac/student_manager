import 'package:flutter/material.dart';

String welcomePage = 'welcome_page';
String login = 'login_page';
String register = 'registration_page';
String menuPage = 'menu_page';
String timeTable = 'time_table';
String announce = 'announcement';
String setPage = 'setting_page';
String resultPage = 'result_page';

String fontRighteous = 'Righteous';
String fontBlackOps  = 'BlackOpsOne';

String mainLogo = 'main_logo';

String sma = 'Student\nManagement\nApp';
Map<String,String> timing = {
  '8:30 - 9:20':"CSE2017",
  '9:25 - 10:15':"CSE2017",
  '10:30 - 11:20':"CSE3092",
  '11:25 - 12:15':"Library",
  '12:15 - 13:05':"LUNCH Break",
  '13:05 - 13:55':"Sports",
  '14:00 - 14:50':"MEC2001",
  '15:00 - 15:50':"MAT2002",
  '15:55 - 16:45':"CCE",
};

Iterable mondaySubList = [
  'CSE2017',
  'CSE2017',
  'CSE3092',
  'Library',
  'LUNCH Break',
  'Sports',
  'MEC2001',
  'MAT2002',
  'CCE',
];
List announceList = [
  'This is Announcement 1. This array is inside student_manager/lib/constants and try to connect this with new file of notepad or something.',
  'This is Announcement 2. This array is inside student_manager/lib/constants and try to connect this with new file of notepad or something.',
  'This is Announcement 3. This array is inside student_manager/lib/constants and try to connect this with new file of notepad or something.',
  'This is Announcement 4. This array is inside student_manager/lib/constants and try to connect this with new file of notepad or something.',
  'This is Announcement 5. This array is inside student_manager/lib/constants and try to connect this with new file of notepad or something.',
  'This is Announcement 6. This array is inside student_manager/lib/constants and try to connect this with new file of notepad or something.',
];

class LogNRegister extends StatelessWidget {
  const LogNRegister({
    Key? key, required this.choice, required this.route,
  }) : super(key: key);

  final String choice,route;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.pushNamed(context, route);
      },
      child: Padding(
        padding: EdgeInsets.all(50.0),
        child: Text(
          choice,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
