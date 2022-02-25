import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:diabetic_assistant/components/dashboard_widget.dart';
import 'package:diabetic_assistant/temp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFFF1F3F7),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(height: 100),
              SectionWrapper(
                title: 'Mediterranean diet',
                actionTitle: 'Details',
                child: MainDashboardWidget(size: size),
              ),
              SizedBox(height: 20 * 2),
              SectionWrapper(
                title: 'Meals today',
                actionTitle: 'Customize',
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: WidgetList(),
                ),
              ),
              Container(height: 200),
            ],
          ),
        ),
      ),
    );
  }
}

class SectionWrapper extends StatelessWidget {
  final Widget child;
  final String title;
  final String actionTitle;
  const SectionWrapper({
    Key? key,
    required this.child,
    required this.title,
    required this.actionTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
            Row(
              children: [
                Text(
                  actionTitle,
                  style: TextStyle(
                    color: Color(0xFF7290EA),
                    fontSize: 16,
                  ),
                ),
                SizedBox(width: 5),
                Icon(CupertinoIcons.arrow_right, size: 20)
              ],
            )
          ],
        ),
        SizedBox(height: 15),
        child,
      ],
    );
  }
}
