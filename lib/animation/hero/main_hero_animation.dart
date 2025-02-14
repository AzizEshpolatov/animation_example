import 'package:animation_example/widget/navigator_extension.dart';
import 'package:flutter/material.dart';

import 'hero_detail.dart';

class MainHeroAnimation extends StatelessWidget {
  const MainHeroAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Hero Animation (learn & example)",
          style: TextStyle(fontSize: 14, color: Colors.black),
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Center(
          child: GestureDetector(
            onTap: () => push(DetailPage(), context: context),
            child: Hero(
              tag: 'personImage',
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  'assets/images/person.png',
                  width: double.infinity,
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
