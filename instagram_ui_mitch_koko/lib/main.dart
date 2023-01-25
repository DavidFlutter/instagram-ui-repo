import 'package:flutter/material.dart';
import 'package:instagram_ui_mitch_koko/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.grey),
      home: HomePage(),
    );
  }
}
