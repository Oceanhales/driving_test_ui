import 'package:flutter/material.dart';
import 'package:driving_test_ui/dashboard.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor : Color(0xFF0d6898),
        //canvasColor: Color(0xFFB5C8D2),
      ),
      home: DashBoardPage(title: 'Dashboard'),
      debugShowCheckedModeBanner: false,
    );
  }
}


