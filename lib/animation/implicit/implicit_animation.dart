import 'package:animation_example/animation/implicit/animated_align_example.dart';
import 'package:animation_example/animation/implicit/animated_container_example.dart';
import 'package:animation_example/animation/implicit/animated_opacity.dart';
import 'package:animation_example/widget/custom_button.dart';
import 'package:animation_example/widget/navigator_extension.dart';
import 'package:flutter/material.dart';

/// * Implicit animation *
/// Bu animation turi soddalashtirilgan va animatsiya yasaash biroz sodda bolgan
/// usul bolib buni biz boshlangich va oxirgi nuqtani beramiz qolgan jarayonni
/// flutter ozi avtomatik boshqaradi.
/// har qanday setState() ishga tushganda animatsiya ishga tushadi
/// Implicit animation ishlatilganda widgetning rangi,size, va boshqa
/// xususiyatlari tezda emas asta sekinlik bilan ozgaradi va bu animatsiya
/// hosil qiladi. Bu usul tez va ancha sodda animatsiya yasash usulidir.
/// Flutterda implicit animatsiya yasash uchun quyidagilarni ishlatishimiz
/// mumkin.
/// AnimatedOpacity,AnimatedContainer,AnimatedAlign,AnimatedPadding,
/// AnimatedPositioned,AnimatedSwitcher va h.k
/// Implicit Animation – Flutter'da animatsiyani soddalashtirish uchun qulay
/// yechim bo'lib, dasturchidan faqat boshlang'ich va yakuniy qiymatlarni
/// ko'rsatishni talab qiladi. Flutter qolganini o'zi hal qiladi. Bu
/// animatsiya turi tezkor va ishonchli bo'lib, oddiy animatsiyalar uchun
/// juda mos keladi.

class ImplicitAnimationPage extends StatelessWidget {
  const ImplicitAnimationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Implicit animation",
          style: TextStyle(fontSize: 16, color: Colors.black),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomButton(
            onTap: () => push(AnimatedOpacityPage(), context: context),
            text: "Animated Opacity example",
          ),
          CustomButton(
            onTap: () => push(AnimatedContainerExample(), context: context),
            text: "Animated Controller example",
          ),
          CustomButton(
            onTap: () => push(AnimatedAlignExample(), context: context),
            text: "Animated align example",
          ),
        ],
      ),
    );
  }
}
