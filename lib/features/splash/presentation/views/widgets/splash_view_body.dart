import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:selaty/core/utils/assets.dart';
import 'package:selaty/core/utils/styles.dart';
import 'package:selaty/core/widgets/custom_loading.dart';
import 'package:selaty/features/onboarding/presentation/views/onbaording_view.dart';

class SplashViewViewBody extends StatefulWidget {
  const SplashViewViewBody({super.key});

  @override
  State<SplashViewViewBody> createState() => _SplashViewViewBodyState();
}

class _SplashViewViewBodyState extends State<SplashViewViewBody> {
  @override
  void initState() {
    super.initState();
    navigateToOnboarding();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(
            flex: 1,
          ),
          Image.asset(
            AssetesData.logo,
            width: 180.w,
            height: 180.h,
          ),
          Text(
            'ســـــلتي',
            style: Styles.textStyle30.copyWith(
              color: Colors.red,
            ),
          ),
          Text(
            'SELATY',
            style: Styles.textStyle20.copyWith(letterSpacing: 5),
          ),
          const Spacer(
            flex: 1,
          ),
          const CustomLoading(
            size: 45,
          ),
          const Spacer(
            flex: 3,
          )
        ],
      ),
    );
  }

  // Navigate to the Onboarding view after a delay.
  void navigateToOnboarding() {
    Future.delayed(const Duration(seconds: 3), () {
      GoRouter.of(context).push(OnboardingView.kOnboardingView);
    });
  }
}
