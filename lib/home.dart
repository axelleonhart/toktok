import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  Widget get topSection => Container(height: 100.0, color: Colors.yellow[300]);

  Widget get videoDescription => Expanded(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
              height: 10.0,
              color: Colors.green[300],
              margin: EdgeInsets.only(top: 10)),
          Container(
              height: 10.0,
              color: Colors.green[300],
              margin: EdgeInsets.only(top: 10)),
          Container(
              height: 10.0,
              color: Colors.green[300],
              margin: EdgeInsets.only(top: 10)),
        ],
      ));

  Widget get actionsToolbar => Container(
        width: 100.0,
        color: Colors.red[300],
        child: Column(
            mainAxisSize: MainAxisSize.min,
            children: List<Widget>.generate(
                5,
                (_) => Container(
                      width: 60,
                      height: 60,
                      color: Colors.blue[300],
                      margin: EdgeInsets.only(top: 20.0),
                    ))),
      );

  Widget get middleSection => Expanded(
        child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [videoDescription, actionsToolbar]),
      );

  Widget get bottomSection => Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: List<Widget>.generate(5, (index) => Container(
      width: 40.0,
      height: 40.0,
      color: Colors.purple[300],
    )),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        //Top section
        topSection,
        //Middle section
        middleSection,
        //Bottom section
        bottomSection,
      ],
    ));
  }
}
