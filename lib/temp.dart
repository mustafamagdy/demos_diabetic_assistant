import 'package:diabetic_assistant/components/container_wdget.dart';
import 'package:flutter/material.dart';

final colors = [
  Color(0xFFF5848D),
  Color(0xFFFAB79F),
  Color(0xFF8399E5),
  Color(0xFF696BDA),
  Color(0xFFF9A2C0),
  Color(0xFFF86292),
];

Widget WidgetList() {
  return Container(
    width: 700,
    height: 200,
    child: ListView(
      scrollDirection: Axis.horizontal,
      clipBehavior: Clip.none,
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ContainerWidget(
          iconFileName: 'assets/images/kawaii-taco.png',
          gradiantColors: [
            colors[0],
            colors[1],
          ],
          child: Center(
            child: Text('Heello'),
          ),
          width: 120,
          height: 180,
        ),
        SizedBox(width: 10),
        ContainerWidget(
          iconFileName: 'assets/images/broccoli1.png',
          gradiantColors: [
            colors[2],
            colors[3],
          ],
          child: Center(
            child: Text('Heello'),
          ),
          width: 120,
          height: 180,
        ),
        SizedBox(width: 10),
        ContainerWidget(
          iconFileName: 'assets/images/watermelon1.png',
          gradiantColors: [
            colors[4],
            colors[5],
          ],
          child: Center(
            child: Text('Heello'),
          ),
          width: 120,
          height: 180,
        ),
        SizedBox(width: 10),
      ],
    ),
    //  _temp1(),
  );
}
