import 'package:flutter/material.dart';
import 'package:your_book_app/Features/home/presentation/views/home_view.dart';
import 'package:your_book_app/Features/splash/presentation/views/widgets/sliding_text.dart';

import '../../../../../core/utils/assets.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({
    super.key,
  });

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with TickerProviderStateMixin{

  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToHome();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(Assets.logo),
        const  SizedBox(
            height: 8,
          ),
          SlidingText(slidingAnimation: slidingAnimation)
        ],
      ),
    );
  }


  void initSlidingAnimation() {

    animationController = AnimationController(
        vsync:this ,
        duration: const Duration(seconds: 3)
    );
    slidingAnimation = Tween<Offset>(
        begin: const Offset(0, 10),
        end: Offset.zero
    ).animate(animationController);
    animationController.forward();
  }

  void navigateToHome() {

    Future.delayed(const Duration(
        seconds: 3
    ),
          () {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomeView(),));
      },
    );
  }
}



