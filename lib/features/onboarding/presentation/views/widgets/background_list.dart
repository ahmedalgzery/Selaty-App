import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:selaty/features/onboarding/presentation/views/widgets/onboarding_view_icons.dart';

List<Widget> backgroundList = const [
  OnboardingViewIcons(
    radius: 90,
    color: Colors.red,
    icon: FontAwesomeIcons.store,
  ),
  OnboardingViewIcons(
    radius: 90,
    color: Colors.green,
    icon: FontAwesomeIcons.store,
  ),
  OnboardingViewIcons(
    radius: 90,
    color: Color(0xFF736C8B),
    icon: FontAwesomeIcons.truckFast,
  ),
];
