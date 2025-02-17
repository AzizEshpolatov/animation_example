import 'package:animation_example/widget/custom_button.dart';
import 'package:flutter/material.dart';

class AnimatedOpacityPage extends StatefulWidget {
  const AnimatedOpacityPage({super.key});

  @override
  State<AnimatedOpacityPage> createState() => _AnimatedOpacityPageState();
}

/// Tasavvur qiling, tugmaga bosilganda rasm asta-sekin ko'rinib chiqishi
/// yoki yo'qolishi kerak.
/// Statik holda Opacity ishlatsa bo'ladi, lekin animatsiya bo'lishini
/// istasangiz, AnimatedOpacity kerak bo'ladi.
/// Rasm, matn yoki tugmani asta-sekin chiqarish yoki yashirish uchun
/// ishlatsak boladi.

class _AnimatedOpacityPageState extends State<AnimatedOpacityPage> {
  double _opacityLevel = 0.0;

  void _toggleOpacity() =>
      setState(() => _opacityLevel = _opacityLevel == 0.0 ? 1.0 : 0.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Animated opacity example",
          style: TextStyle(fontSize: 16, color: Colors.black),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              duration: const Duration(seconds: 2),
              curve: Curves.easeInCubic,
              opacity: _opacityLevel,
              child: Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.3),
                      blurRadius: 8,
                      spreadRadius: 2,
                      offset: const Offset(4, 4),
                    ),
                  ],
                ),
                child: const Center(
                  child: Text(
                    'Hello!',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: MediaQuery.of(context).size.width * .5,
              child: CustomButton(
                onTap: _toggleOpacity,
                text: "Start Visibility",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
