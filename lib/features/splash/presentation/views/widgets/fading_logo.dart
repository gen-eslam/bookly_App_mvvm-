import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class FadingLogo extends StatelessWidget {
  final AnimationController animationController;

  const FadingLogo({required this.animationController, super.key});

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: animationController.drive(CurveTween(curve: Curves.decelerate)),
      child: Image.asset(AssetsData.logo),
    );
  }
}
