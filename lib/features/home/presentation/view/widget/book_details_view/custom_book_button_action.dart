import 'package:flutter/material.dart';

import '../../../../../../constants.dart';
import '../../../../../../core/widgets/custom_button.dart';

class CustomBooksButtonAction extends StatelessWidget {
  final double radius = 15;
  const CustomBooksButtonAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomButton(
          backgroundColor: Colors.white,
          radius: 15,
          side: Side.lift,
          text: "19.99€",
          textColor: Colors.black,
          onPressed: () {},
        ),
        CustomButton(
          backgroundColor: const Color(0xffEF8262),
          radius: 15,
          side: Side.right,
          text: "Free preview",
          textColor: Colors.white,
          onPressed: () {},
        ),
      ],
    );
  }
}
