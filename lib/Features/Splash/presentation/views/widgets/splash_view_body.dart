import 'package:bookly/Features/Home/presentation/view/Home.dart';
import 'package:bookly/core/utilts/assets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'SlidingText.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  late Animation<Offset> slidingAnimation2;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initSlidingAnimation();
    Future.delayed(const Duration(seconds: 2),
        (){
      Get.to(()=>HomeView(),transition: Transition.rightToLeft,duration:Duration(microseconds: 1) );
        }
    );

  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedBuilder(
          animation: slidingAnimation2,
          builder: (BuildContext context, Widget? child) {
            return SlideTransition(
              position: slidingAnimation2,
              child:  Image.asset(AssetsData.logo),
            );
          },
        ),

        SizedBox(
          height: 15,
        ),
        SlidingText(slidingAnimation: slidingAnimation)
      ],
    );
  }
  void initSlidingAnimation(){
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    slidingAnimation = Tween<Offset>(begin: Offset(0, 5), end: Offset(0, 0))
        .animate(animationController);
    slidingAnimation2 = Tween<Offset>(begin: Offset(0, -2), end: Offset(0, 0))
        .animate(animationController);

    animationController.forward();
    slidingAnimation.addListener(() {
      setState(() {});
    });
  }
}
