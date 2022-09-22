import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:student_manager/constants.dart';

class FadingAnimation extends StatelessWidget {
  final double sizeOfFont;

  final double heightOfText;
  const FadingAnimation({
    Key? key, required this.sizeOfFont,required this.heightOfText
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: FadeInDown(
              duration: const Duration(seconds: 2),
              child: Logo(sizeOfFont,heightOfText),
        )
    );
  }
}

class Logo extends StatelessWidget {
   Logo(this.sizeFont,this.height);

  final double sizeFont;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: height,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          width: 10.0,
          color:  Colors.lightBlueAccent,
        )
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