import 'package:animation_example/animation/animation_main_page.dart';
import 'package:flutter/material.dart';
final mainKey = GlobalKey<NavigatorState>();
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter animation example',
      theme: ThemeData(useMaterial3: true),
      home: AnimationMainPage(),
    );
  }
}
