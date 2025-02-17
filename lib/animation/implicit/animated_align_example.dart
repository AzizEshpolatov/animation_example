import 'package:flutter/material.dart';

/// animated Align b/n animation widget
/// animated align bilan widgetni joylashuvini animation shaklda ozgartirishimz
/// mumkin boladi,AnimatedAlign widgetidan foydalanamiz va bazi parametrlarini
/// korib chiqishimiz mumkin.
/// curve – Animatsiya harakat trayektoriyasi (easing)ni belgilaydi
/// duration – Animatsiya qancha davom etishini belgilaydi masalan 1sekund.
/// AnimatedAlign – Flutter vidjetlarining joylashuvini silliq o'zgartirish
/// uchun ishlatiladigan qulay vosita bo'lib, u sodda animatsiyalar uchun juda
/// mos keladi.

class AnimatedAlignExample extends StatefulWidget {
  const AnimatedAlignExample({super.key});

  @override
  State<AnimatedAlignExample> createState() => _AnimatedAlignExampleState();
}

class _AnimatedAlignExampleState extends State<AnimatedAlignExample> {
  bool _isTopLeft = true;

  void _toggleAlignment() {
    setState(() {
      _isTopLeft = !_isTopLeft;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "AnimatedAlign Example",
          style: TextStyle(fontSize: 16, color: Colors.black),
        ),
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.grey[300],
            child: AnimatedAlign(
              duration: const Duration(seconds: 1),
              curve: Curves.easeInOut,
              alignment: _isTopLeft ? Alignment.topLeft : Alignment.bottomRight,
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 8,
                      spreadRadius: 2,
                      offset: const Offset(4, 4),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 20,
            child: ElevatedButton(
              onPressed: _toggleAlignment,
              child: const Text('Toggle Position'),
            ),
          ),
        ],
      ),
    );
  }
}
