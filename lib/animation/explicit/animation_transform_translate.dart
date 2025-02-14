import 'package:animation_example/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter/physics.dart';

class AnimationTransformRotate extends StatefulWidget {
  const AnimationTransformRotate({super.key});

  @override
  State<AnimationTransformRotate> createState() =>
      _AnimationTransformRotateState();
}

class _AnimationTransformRotateState extends State<AnimationTransformRotate>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Transform translate & animation",
          style: TextStyle(fontSize: 16, color: Colors.black),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          /// animatedBuilder-bu flutterda animatsiyani boshqarish va UI-ni
          /// yangilash uchun ishlatiladi.U animation obyektini tinglaydi va
          /// animatsiya qiymati ozgarganda UI-ni avtomatik ravishda yangilaydi
          /// asosiy ishlatiladigan parametrlari-animation/builder/child

          AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              return Transform.translate(
                offset: Offset(_controller.value * 200, 0),
                child: Transform.rotate(
                  angle: _controller.value * 2 * pi,
                  child: Image.asset(
                    'assets/images/person.png',
                    width: 100,
                    height: 100,
                  ),
                ),
              );
            },
          ),
          const SizedBox(height: 30),
          CustomButton(
            onTap: () => _controller.repeat(),
            text: 'Repeat',
          ),
          CustomButton(
            onTap: () => _controller.fling(),
            text: 'Fling',
          ),
          CustomButton(
            onTap: () => _controller.animateTo(1.0),
            text: 'AnimateTo',
          ),
          CustomButton(
            onTap: () => _controller.animateBack(0.0),
            text: "AnimateBack",
          ),
          CustomButton(
            onTap: () {
              /// SpringSimulation-bu fizikaga asoslangan animatsiya turi va
              /// tabiy ravishda prujina kabi ishlaydi. yani tebranadi animatsiya
              final springSimulation = SpringSimulation(
                const SpringDescription(
                  mass: 1,
                  stiffness: 100,
                  damping: 5,
                ),
                _controller.value,
                1.0,
                0,
              );
              _controller.animateWith(springSimulation);
            },
            text: 'AnimateWith',
          ),
        ],
      ),
    );
  }
}
