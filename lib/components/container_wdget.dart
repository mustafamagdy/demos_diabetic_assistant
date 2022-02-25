import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  final Widget child;
  final double width;
  final double height;
  late List<Color>? gradiantColors;
  final String iconFileName;
  ContainerWidget({
    Key? key,
    required this.child,
    required this.width,
    required this.height,
    required this.iconFileName,
    this.gradiantColors,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const borderRadius = BorderRadius.only(
      topLeft: Radius.circular(10),
      topRight: Radius.circular(60),
      bottomLeft: Radius.circular(10),
      bottomRight: Radius.circular(10),
    );
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurRadius: 20,
                color: gradiantColors != null
                    ? gradiantColors![0].withOpacity(0.5)
                    : Colors.black.withOpacity(0.5),
                offset: const Offset(0, 8),
              )
            ],
            borderRadius: borderRadius,
          ),
          child: Container(
            margin: const EdgeInsets.only(right: 10),
            child: ClipRRect(
              borderRadius: borderRadius,
              child: Stack(
                children: [
                  Container(
                    width: width,
                    height: height,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: gradiantColors!,
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    child: child,
                  ),
                  Positioned(
                    top: -30,
                    left: -10,
                    child: ClipOval(
                      child: Container(
                        width: 90,
                        height: 90,
                        color: Colors.white.withOpacity(0.25),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: -20,
          left: 10,
          child: Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(iconFileName),
              ),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  blurRadius: 10,
                  color: Colors.black.withOpacity(0.2),
                  offset: const Offset(0.0, 5.0),
                ),
              ],
            ),
            // child: SvgPicture.asset(
            //   'assets/icons/bread.svg',
            // ),
          ),
        ),
      ],
    );
  }
}
