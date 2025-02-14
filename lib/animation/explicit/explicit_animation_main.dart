import 'package:animation_example/animation/explicit/animation_controller_.dart';
import 'package:animation_example/animation/explicit/animation_transform_translate.dart';
import 'package:animation_example/animation/explicit/transform_rotate.dart';
import 'package:animation_example/widget/custom_button.dart';
import 'package:animation_example/widget/navigator_extension.dart';
import 'package:flutter/material.dart';

class ExplicitAnimationMain extends StatelessWidget {
  const ExplicitAnimationMain({super.key});

  @override
  Widget build(BuildContext context) {
    /// * Explicit animation *
    /// bu animation qolda boshqariladi, yani dasturchi tomonidan qachon
    /// boshlanishi va qachon tugashi  toliq nazorat qilinadi
    /// animationController,animation,tween,TickerProviderStateMixin,AnimatedBuilder

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Explicit animation",
          style: TextStyle(fontSize: 16, color: Colors.black),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomButton(
            onTap: () => push(
              AnimationControllerWithAnimation(),
              context: context,
            ),
            text: "Animation Controller example",
          ),
          CustomButton(
            onTap: () => push(
              AnimationTransformRotate(),
              context: context,
            ),
            text: "Transform translate & animation",
          ),
          CustomButton(
            onTap: () => push(
              TransformRotateExample(),
              context: context,
            ),
            text: "Transform rotate & animation",
          ),
        ],
      ),
    );
  }
}
