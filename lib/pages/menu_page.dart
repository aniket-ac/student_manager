import 'package:flutter/material.dart';
import 'package:student_manager/constants.dart';
import 'package:student_manager/components/rounded_button.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent[700],
      ),
      drawer: Drawer(
      backgroundColor: Colors.black26,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.red[800],
              ),
              child: Text(
                'MENU',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontFamily: fontBlackOps,
                ),
              ),
            ),
            const DrawerObjects(object: 'Home', pageRoute: '#',objectIcon: Icon(Icons.home),),
            DrawerObjects(object: 'Time Table', pageRoute: timeTable,objectIcon: const Icon(Icons.table_chart),),
            DrawerObjects(object: 'Announcement',pageRoute: announce, objectIcon: const Icon(Icons.volume_up_rounded),),
            DrawerObjects(object: 'Setting ',pageRoute: setPage, objectIcon: const Icon(Icons.settings),),
          ],
        ),
      ),

      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            Icon(
                Icons.account_circle,
              size: 250.0,
            ),
            Center(
              child: Text(
                'Name : Aniket Choudhary\n'
                    'College : Presidency University\n'
                    'Branch  : Computer Science and Engineering\n'
                    'Year    : III',
                ),
            ),
          ],
        ),
      ),
    );
  }
}


