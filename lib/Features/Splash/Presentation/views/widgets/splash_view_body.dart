import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';


import 'text_animated_widget.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingText;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToHome();
  }

  

  
  @override
  void dispose(){
    super.dispose();
  animationController.dispose();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/Logo.png'),
        const SizedBox(
          height: 10,
        ),
        TextAnimationWidget(slidingText: slidingText)
      ],
    ));
  }


void initSlidingAnimation() {
     animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    slidingText = Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
        .animate(animationController);
        animationController.forward();
  }

  void navigateToHome() {
     Future.delayed(const Duration(seconds: 2),(){
      GoRouter.of(context).push('/homeView');
    });
  }
    }