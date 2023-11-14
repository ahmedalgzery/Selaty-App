import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:go_router/go_router.dart';
import 'package:selaty/constant.dart';
import 'package:selaty/features/auth/presentation/views/auth_view.dart';
import 'package:selaty/features/onboarding/presentation/views/widgets/background_list.dart';
import 'package:selaty/features/onboarding/presentation/views/widgets/page_bodies_list.dart';

class OnboardingViewBody extends StatelessWidget {
  const OnboardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return OnBoardingSlider(
      totalPage: 3,
      centerBackground: true,
      controllerColor: kPrimaryColor,
      headerBackgroundColor: Colors.black,
      background: backgroundList,
      speed: 2.2,
      pageBodies: pageBodiesList,
      finishButtonText: 'ابدأ',
      onFinish: () {
        GoRouter.of(context).push(AuthView.kAuthView);
      },
    );
  }
}
