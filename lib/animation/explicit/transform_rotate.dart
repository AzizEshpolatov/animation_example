import 'dart:math';

import 'package:flutter/material.dart';

import '../../widget/custom_button.dart';

class TransformRotateExample extends StatefulWidget {
  const TransformRotateExample({super.key});

  @override
  State<TransformRotateExample> createState() => _TransformRotateExampleState();
}

class _TransformRotateExampleState extends State<TransformRotateExample>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _starSizeAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    _starSizeAnimation = _controller.drive(Tween<double>(begin: 30, end: 200)
        .chain(CurveTween(curve: Curves.easeInOut)));
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
          "Transform rotate & animation",
          style: TextStyle(fontSize: 16, color: Colors.black),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 60),
            child: AnimatedBuilder(
              animation: _controller,
              builder: (context, child) {
                return Transform.rotate(
                  angle: _controller.value * 2 * pi,
                  child: ClipPath(
                    clipper: ArrowBackClipper(),
                    child: Container(
                      height: 200,
                      color: Colors.red,
                      child: Center(
                        child: Transform.rotate(
                          angle: -_controller.value * 2 * pi,
                          child: Icon(
                            Icons.star,
                            size: _starSizeAnimation.value,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 55),
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
        ],
      ),
    );
  }
}

class ArrowBackClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(size.width, 0);
    path.lineTo(size.width * 0.8, size.height * 0.5);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(size.width * 0.2, size.height * 0.5);
    path.lineTo(0, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
