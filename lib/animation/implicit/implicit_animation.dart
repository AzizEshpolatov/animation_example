import 'package:flutter/material.dart';

class ImplicitAnimationPage extends StatefulWidget {
  const ImplicitAnimationPage({super.key});

  @override
  State<ImplicitAnimationPage> createState() => _ImplicitAnimationPageState();
}

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

class _ImplicitAnimationPageState extends State<ImplicitAnimationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
