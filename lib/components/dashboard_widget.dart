import 'package:flutter/material.dart';

import 'package:diabetic_assistant/components/score_widget.dart';
import 'package:diabetic_assistant/components/separator.dart';

class MainDashboardWidget extends StatelessWidget {
  final Size size;
  const MainDashboardWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: 300,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(80),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(1, 5),
              blurRadius: 15,
              spreadRadius: 5,
            )
          ]),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: Column(
          children: [
            Flexible(
              flex: 3,
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _kcalWidget(
                            kcal: 1127,
                            label: 'Eaten',
                            icon: 'assets/images/taco.png',
                            color: Color(0xFFCED5EE)),
                        _kcalWidget(
                            kcal: 102,
                            label: 'Burned',
                            icon: 'assets/images/taco.png',
                            color: Color(0xFFF7CBD6)),
                      ],
                    ),
                  ),
                  ScoreWidget(
                    size: 180,
                    progressColor: Colors.orange,
                    percentage: 0.45,
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            Separator(width: size.width),
            SizedBox(height: 15),
            Flexible(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _bottomDashboardItem(
                      percentage: 0.8,
                      color: Colors.blue,
                      label: 'Carbs',
                      weight: 12),
                  _bottomDashboardItem(
                      percentage: 0.6,
                      color: Colors.red,
                      label: 'Protein',
                      weight: 30),
                  _bottomDashboardItem(
                      percentage: 0.3,
                      color: Colors.orange,
                      label: 'Fat',
                      weight: 10),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _bottomDashboardItem({
    required double percentage,
    required MaterialColor color,
    required String label,
    required int weight,
  }) {
    final width = 60.0;
    return Container(
      width: width,
      height: 100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 5),
          Container(
            width: width,
            height: 6,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Container(color: color.shade100),
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    bottom: 0,
                    width: width * percentage,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        gradient: LinearGradient(
                          colors: [color.shade200, color.shade400],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 5),
          Text(
            '${weight}g left',
            style: TextStyle(
              fontWeight: FontWeight.w200,
            ),
          ),
        ],
      ),
    );
  }

  _kcalWidget(
      {required int kcal,
      required String label,
      required String icon,
      required Color color}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(5),
          ),
          margin: const EdgeInsets.only(right: 10),
          width: 3,
          height: 50,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.grey.shade400,
              ),
            ),
            SizedBox(height: 5),
            Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Image.asset(
                  icon,
                  width: 30,
                  height: 30,
                  fit: BoxFit.cover,
                ),
                SizedBox(width: 15),
                Text(
                  kcal.toString(),
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 22,
                    color: Colors.grey.shade800,
                  ),
                ),
                SizedBox(width: 5),
                Text(
                  'Kcal',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.grey.shade400,
                  ),
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
