import 'package:flutter/material.dart';
import 'package:flutter_web_first/statistics_home_page.dart';

class HomePage extends StatefulWidget {
  final blueTeam = [];
  final redTeam = [];

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final generalMargin = 20.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("全素人運動會"),
      ),
      body: Container(
        color: Colors.blue,
        child: Column(
          children: [
            _dashboard(),
            _options(),
            _teamBoard(),
          ],
        ),
      ),
    );
  }

  Widget _dashboard() {
    return Center(
      child: FractionallySizedBox(
        widthFactor: 1.0,
        child: Container(
          margin: EdgeInsets.all(generalMargin),
          height: 300,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
              color: Colors.red),
        ),
      ),
    );
  }

  Widget _options() {
    return Container(
      margin: EdgeInsets.fromLTRB(generalMargin, 0, generalMargin, 0),
      height: 40,
      child: Row(
        children: [
          _optionWidget(Colors.red, "隊伍名單"),
          _optionWidget(Colors.green, "比賽結果"),
          _optionWidget(Colors.pink, "統計資料", destination: StatisticsHomePage()),
          _optionWidget(Colors.brown, "設定"),
        ],
      ),
    );
  }

  Widget _optionWidget(Color color, String title, {Widget destination}) {
    return Expanded(
        child: GestureDetector(
      onTapUp: (details) {
        if (destination == null) return;
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => StatisticsHomePage()));
      },
      child: Container(
        color: color,
        child: Center(
          child: Text(title),
        ),
      ),
    ));
  }

  Widget _teamBoard() {
    return Expanded(
      child: Row(
        children: [
          _teamList(),
          _teamList(),
        ],
      ),
    );
  }

  Widget _teamList() {
    return Expanded(
        child: Container(
      margin: EdgeInsets.all(generalMargin),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          color: Colors.green),
      child: Column(
        children: [
          Container(
            height: 80,
            margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                color: Colors.orange),
            child: Center(
              child: Text(
                "Team Name",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return _nameWidget();
              },
              itemCount: 20,
              scrollDirection: Axis.vertical,
              clipBehavior: Clip.hardEdge,
              padding: EdgeInsets.all(10),
            ),
          ),
        ],
      ),
    ));
  }

  Widget _nameWidget() {
    return Container(
      height: 80,
      margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: Row(
              children: [
                Container(
                  color: Colors.white,
                  width: 40,
                  height: 40,
                  margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                ),
                Text(
                  "123",
                  style: TextStyle(color: Colors.black, fontSize: 30),
                ),
              ],
            ),
          )),
    );
  }
}
