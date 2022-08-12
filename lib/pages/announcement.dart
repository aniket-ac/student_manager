import 'package:flutter/material.dart';
import 'package:student_manager/constants.dart';
//TODO: Divider apply karna hai!!!


class Announcement extends StatefulWidget {
  const Announcement({Key? key}) : super(key: key);

  @override
  State<Announcement> createState() => _AnnouncementState();
}

class _AnnouncementState extends State<Announcement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        title: Text(
            'Announcemet',
          style: TextStyle(
            fontSize: 30.0,
            fontFamily: fontBlackOps,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [

            ExtendDivide(textAnnouncement: announceList[0],),
            DIvideWidget(),
            ExtendDivide(textAnnouncement: announceList[1],),
            DIvideWidget(),
            ExtendDivide(textAnnouncement: announceList[2],),
            DIvideWidget(),
            ExtendDivide(textAnnouncement: announceList[3],),
            DIvideWidget(),
            ExtendDivide(textAnnouncement: announceList[4],),
            DIvideWidget(),
            ExtendDivide(textAnnouncement: announceList[5],),
            DIvideWidget(),
          ],
        ),
      ),
    );
  }
}

class DIvideWidget extends StatelessWidget {
  const DIvideWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Divider(
      height: 20.0,
      thickness: 5.0,
      color: Colors.black,
      indent: 10.0,
      endIndent: 0,
    );
  }
}

class ExtendDivide extends StatelessWidget {
  const ExtendDivide({
    Key? key, required this.textAnnouncement,
  }) : super(key: key);
  final String textAnnouncement;
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
          color: Colors.white10,
          child: Text(
            textAnnouncement,
            style: const TextStyle(
              fontSize: 15.0,
            ),
          ),
        ),
    );
  }
}
