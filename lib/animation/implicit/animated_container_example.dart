import 'package:flutter/material.dart';

/// AnimatedContainer – Container widgetining kengaytirilgan ko'rinishi bo'lib,
/// o'lchami (size), rangi (color), chegarasi (border), radiusi (borderRadius)
/// kabi xususiyatlarining o'zgarishini animatsiya bilan amalga oshiradi.

/// Masalan, tugmaga bosilganda tugma kattalashishi yoki rangi o'zgarishi
/// kerak bo'lsa, Container o'rniga AnimatedContainer ishlatib, bu jarayonni
/// animatsion qilishingiz mumkin.
/// Animatsiyaga maxsus controller talab qilinmaydigan oddiy holatlarda
/// ishlatish mumkin

class AnimatedContainerExample extends StatelessWidget {
  const AnimatedContainerExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Animated container example",
          style: TextStyle(fontSize: 16, color: Colors.black),
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(),
    );
  }
}
