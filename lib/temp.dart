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
          child: _sampleMeal(),
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
          child: _sampleMeal(),
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
          child: _sampleMeal(),
          width: 120,
          height: 180,
        ),
        SizedBox(width: 10),
      ],
    ),
    //  _temp1(),
  );
}

Widget _sampleMeal() {
  return Padding(
    padding: const EdgeInsets.symmetric(
      vertical: 10,
      horizontal: 15,
    ),
    child: Column(
      children: [
        SizedBox(height: 50),
        Text(
          'Breakfast',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        SizedBox(height: 10),
        Text(
          'Bread, botato, Apple, and other stuff',
          style: TextStyle(
            color: Colors.white,
            fontSize: 12,
          ),
        ),
        Spacer(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              '525',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 28,
              ),
            ),
            Text(
              'kcal',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
