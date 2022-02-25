import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class ScoreWidget extends StatelessWidget {
  final double size;
  final Color progressColor;
  final double percentage;
  const ScoreWidget({
    Key? key,
    required this.size,
    required this.progressColor,
    required this.percentage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        CircularPercentIndicator(
          animation: true,
          startAngle: 0.0,
          circularStrokeCap: CircularStrokeCap.round,
          backgroundColor: const Color(0xFFE2E8FB),
          radius: (size / 2) - (20 / 2),
          lineWidth: 15.0,
          backgroundWidth: 5.0,
          rotateLinearGradient: true,
          linearGradient: const LinearGradient(
            colors: [
              Color(0xFF555AD4),
              Color(0xFF7A97E5),
            ],
          ),
          percent: percentage,
          maskFilter: MaskFilter.blur(BlurStyle.solid, 5),
          center: SizedBox(
            width: size * .7,
            height: size * .7,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    '1503',
                    style: TextStyle(
                      color: Color(0xFF4E52CD),
                      fontWeight: FontWeight.w600,
                      fontSize: 30,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Kcal left',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
