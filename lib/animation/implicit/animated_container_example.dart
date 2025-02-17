import 'package:animation_example/widget/custom_button.dart';
import 'package:flutter/material.dart';

/// AnimatedContainer – Container widgetining kengaytirilgan ko'rinishi bo'lib,
/// o'lchami (size), rangi (color), chegarasi (border), radiusi (borderRadius)
/// kabi xususiyatlarining o'zgarishini animatsiya bilan amalga oshiradi.

/// Masalan, tugmaga bosilganda tugma kattalashishi yoki rangi o'zgarishi
/// kerak bo'lsa, Container o'rniga AnimatedContainer ishlatib, bu jarayonni
/// animatsion qilishingiz mumkin.
/// Animatsiyaga maxsus controller talab qilinmaydigan oddiy holatlarda
/// ishlatish mumkin

class AnimatedContainerExample extends StatefulWidget {
  const AnimatedContainerExample({super.key});

  @override
  State<AnimatedContainerExample> createState() =>
      _AnimatedContainerExampleState();
}

class _AnimatedContainerExampleState extends State<AnimatedContainerExample> {
  bool _isExpanded = false;

  void _toggleContainer() => setState(() => _isExpanded = !_isExpanded);

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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: Duration(seconds: 3),
              curve: Curves.fastOutSlowIn,
              height: _isExpanded ? 200 : 100,
              width: _isExpanded ? 200 : 100,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: _isExpanded
                    ? BorderRadius.circular(16)
                    : BorderRadius.circular(0),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.3),
                    blurRadius: 8,
                    spreadRadius: 2,
                    offset: const Offset(4, 4),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: MediaQuery.of(context).size.width * .65,
              child: CustomButton(
                onTap: _toggleContainer,
                text: "start animation",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
