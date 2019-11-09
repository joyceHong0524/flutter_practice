import 'package:flutter/material.dart';
import './screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fultter Travel UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        accentColor: Color(0xffd8ecf1),
        primaryColor: Color(0xff3ebace),
        scaffoldBackgroundColor: Color(0xfffef5f7),
      ),
      home: HomeScreen(),
    );
  }
}
