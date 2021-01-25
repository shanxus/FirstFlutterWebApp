import 'package:flutter/material.dart';

class StatisticsHomePage extends StatefulWidget {
  @override
  _StatisticsHomePageState createState() => _StatisticsHomePageState();
}

class _StatisticsHomePageState extends State<StatisticsHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Container(
        height: 300,
        child: ListView.separated(
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return Container(height: 100,);
          },
          separatorBuilder: (context, index) {
            return index == 0 ? Container(color: Colors.white, height: 0.3,) : Container();
          },
          itemCount: 20,
        ),
      ),
    );
  }
}
