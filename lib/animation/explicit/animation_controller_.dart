import 'package:animation_example/widget/custom_button.dart';
import 'package:flutter/material.dart';

class AnimationControllerWithAnimation extends StatefulWidget {
  const AnimationControllerWithAnimation({super.key});

  @override
  State<AnimationControllerWithAnimation> createState() =>
      _AnimationControllerWithAnimationState();
}

class _AnimationControllerWithAnimationState
    extends State<AnimationControllerWithAnimation>
    with SingleTickerProviderStateMixin {
  // SingleTickerProviderStateMixin - ishlatildi

  late AnimationController _controller;

  @override
  void initState() {
    /// *animationBehavior* -> animationni qanday boshqarishni belgilaydi.
    /// AnimationBehavior enum class-dan selected qilsak boladi
    /// AnimationBehavior -> normal || preserve
    /// *debugLabel* -> Animatsiyani debug rejiida identifikatsiya qilish
    /// uchun ishlatiladi
    /// *isAnimating* -> animatsiyani hozir ishlayotganini tekshirsak boladi
    /// *reverseDuration* -> animation teskari ravishda qancha vaqt ishlash
    /// kerakligini taminlashimiz mumkin.
    /// *view* -> animatsiyaning qiymatini qaytaradi
    /// *isCompleted* -> animation tugaganligini tekshirish uchun ishlatiladi
    /// *isDismissed* -> animatsiya boshlanish nuqtasida 0.0 ekanini tekshiradi
    /// *addStatusListener* -> animation xolati ozgarganda uni statusini
    /// tinglab turishimiz mumkin, tugagani...va h.k
    /// *animateBack* -> animatsiyani malum bir vaqtda qaytarish uchun ishlatamz
    /// *animateTo* -> animatsiya qiymatini malum bir qiymatga olib boradi
    /// *animateWith* -> SpringSimulation yordamida animatsiyani boshqarish
    /// mumkin
    /// *drive* -> boshqa animatsiya bilan birlashtirish uchun ishlatilinadi
    /// *fling* -> animatsiyani tezlik bilan boshlash
    _controller = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
      debugLabel: "MyAnimationController",

      /// *debugLabel* -> Animations bo‘limiga kirib korsak boladi, u yerda
      /// har bir animatsiya ro‘yxatda chiqadi.
      /// Ko‘p animatsiya ishlatganda, qaysi biri ishlamayotganini
      /// tezda topish uchun qo‘llaniladi.
      // Debug vaqtida ishlaydi, release versiyada ta’siri yo‘q.
      animationBehavior: AnimationBehavior.preserve,
    )
      ..addListener(() => setState(() {}))
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          debugPrint("--- animatsiya tugadi!! ---");
        } else if (status == AnimationStatus.forward) {
          debugPrint("--- animatsiya boshlandi!! ---");
        } else if (status == AnimationStatus.reverse) {
          debugPrint("--- animatsiya reverse qilindi!! ---");
        } else {
          debugPrint("--- animatsiya boshlang'ich  holatda! ---");
        }
      });
    _controller.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    /// animation controller bilan animatsiya yasab koramiz.
    /// AnimationController bu animatsiyalarni boshqarish uchun ishlatiladigan
    /// class bolib bunda animationni boshlanishi tugashi xullas barcha
    /// parametrlari nazorat qilinadi.
    /// misol qilib bazi barametrlarini korib chiqamiz:
    /// *duration* - parametri bor bunda animatsionning davomiyligini berishimiz
    /// kerak
    /// *vsync* - animatsiyani ekran yangilanishlariga moslashtirib samaradorlik
    /// oshiradi.vsync TickerProvider interfeysini talab qiladi va odatda
    /// SingleTickerProviderStateMixin-dan yordamida foydalaniladi
    ///
    /// *forward* - animationni boshlash uchun foydalaniladigan method
    /// *reverse* - animationni teskari yonalishda boshlaydi
    /// *stop* - aimatsiyani toxtatish uchun
    /// *reset* - animatsiyani boshlangich xolatga qaytaradi
    /// *repeat* - animatsiyani takrorlab turadi
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Animation Controller",
          style: TextStyle(fontSize: 16, color: Colors.black),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 200 + (_controller.value * 100),
            height: 200 + (_controller.value * 100),
            color: Colors.green,
          ),
          const Spacer(),
          CustomButton(
            onTap: () => _controller.reverse(),
            text: "Reverse Animation",
          ),
          CustomButton(
            onTap: () => _controller.forward(),
            text: "Forward Animation",
          ),
          CustomButton(
            onTap: () => _controller.reset(),
            // reset ishlamaydi sababi animation tugab boldi qayta boshlay olmaydi
            text: "Reset Animation",
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
