import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../constants.dart';
import '../../../../../../core/widgets/custom_button.dart';

class CustomBooksButtonAction extends StatelessWidget {
  final double radius;
  const CustomBooksButtonAction({super.key, this.radius = 15});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomButton(
          backgroundColor: Colors.white,
          radius: radius,
          side: Side.lift,
          text: "19.99€",
          textColor: Colors.black,
          onPressed: () {},
        ),
        CustomButton(
          backgroundColor: const Color(0xffEF8262),
          radius: radius,
          side: Side.right,
          text: "Free preview",
          textColor: Colors.white,
          fontSize: 16.sp,
          onPressed: () {},
        ),
      ],
    );
  }
}
