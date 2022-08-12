import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:student_manager/constants.dart';

class FadingAnimation extends StatelessWidget {
  final double sizeOfFont;
  final double heightOfText;
  const FadingAnimation({
    Key? key, required this.sizeOfFont, required this.heightOfText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FadeInDown(
              duration: const Duration(seconds: 2),
              child: Logo(sizeOfFont,heightOfText),
            ),
          ],
        )
    );
  }
}

class Logo extends StatelessWidget {
  const Logo(this.sizeFont,this.textHeight);

  final double sizeFont;
  final double textHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: textHeight,
      height: textHeight,
      decoration:  BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(textHeight)),
        border: const Border.fromBorderSide(
          BorderSide(
            width: 5.0,
            color: Colors.cyan,
          ),
        ),
      ),
      child: Text(
        sma,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: fontRighteous,
          fontSize: sizeFont,
          color: Colors.cyan,
        ),
      ),
    );
  }
}

class DrawerObjects extends StatelessWidget {
  const DrawerObjects({required this.object, required this.pageRoute, required this.objectIcon});
  final String object,pageRoute;
  final Icon objectIcon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: objectIcon,
      title: Text(object),
      onTap: (){
        Navigator.pushNamed(context, pageRoute);
      },
    );
  }
}

class SubjectWidget extends StatelessWidget {

  const SubjectWidget({
    Key? key, required this.time, required this.subject,
  }) : super(key: key);
  final String time,subject;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          border: Border.all(
              color: Colors.white,
              width: 5.0
          )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            time,
            style: const TextStyle(
              fontSize: 20.0
            ),
          ),
          Text(
            subject,
            style: const TextStyle(
                fontSize: 20.0
            ),
          ),
        ],
      ),
    );
  }
}