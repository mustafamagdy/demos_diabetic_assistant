import 'package:flutter/material.dart';

class Separator extends StatelessWidget {
  final double width;
  const Separator({
    Key? key,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 2,
      color: Colors.grey.shade200,
    );
  }
}
