import 'package:flutter/material.dart';
import 'package:student_manager/constants.dart';
import 'package:student_manager/components/rounded_button.dart';
//TODO: GridView use karna hai.

class TimeTable extends StatefulWidget {
  const TimeTable({Key? key}) : super(key: key);

  @override
  State<TimeTable> createState() => _TimeTableState();
}

class _TimeTableState extends State<TimeTable> with SingleTickerProviderStateMixin {
  static const List<Tab> days = <Tab>[
    Tab(text: 'Monday',),
    Tab(text: 'Tuesday',),
    Tab(text: 'Wednesday',),
    Tab(text: 'Thursday',),
    Tab(text: 'Friday',)
  ];



  List<SubjectWidget> daySubjects = [];


  late TabController _tabController;
  
  @override
  void initState() {
    super.initState();
    timing.forEach((key, value) {
      daySubjects.add(SubjectWidget(time: key,subject: value));
    });
    _tabController = TabController(length: days.length, vsync: this);

  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          controller: _tabController,
          tabs: days,
          automaticIndicatorColorAdjustment: true,
          isScrollable: true,
        ),
      ),
        backgroundColor: Colors.black,
        body: SafeArea(
          child: TabBarView(
            controller: _tabController,
            children: days.map((Tab tab){
              return Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: daySubjects
              ));
            }).toList(),
          ),
        ),
    );
  }
}



class GridTableBox extends StatelessWidget {
  const GridTableBox({
    Key? key, required this.subject,
  }) : super(key: key);
  final String subject;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.black,
          border: Border.all(
            color: Colors.white,
            width: 2.0,
          )
      ),
      child: Text(
          subject,
        style: const TextStyle(
          fontSize: 20.0
        ),
      ),
    );
  }
}