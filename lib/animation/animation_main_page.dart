import 'package:animation_example/animation/custom/main_custom_animation.dart';
import 'package:animation_example/animation/explicit/explicit_animation_main.dart';
import 'package:animation_example/animation/hero/main_hero_animation.dart';
import 'package:animation_example/animation/implicit/implicit_animation.dart';
import 'package:animation_example/widget/custom_button.dart';
import 'package:animation_example/widget/navigator_extension.dart';
import 'package:flutter/material.dart';

class AnimationMainPage extends StatelessWidget {
  const AnimationMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Flutter animation",
          style: TextStyle(fontSize: 16, color: Colors.black),
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomButton(
            text: "Explicit animation",
            onTap: () => push(ExplicitAnimationMain(), context: context),
          ),
          CustomButton(
            text: "Hero animation",
            onTap: () => push(MainHeroAnimation(), context: context),
          ),
          CustomButton(
            text: "Implicit animation",
            onTap: () => push(ImplicitAnimationPage(), context: context),
          ),
          CustomButton(
            text: "Custom animation",
            onTap: () => push(MainCustomAnimation(), context: context),
          ),
        ],
      ),
    );
  }
}
