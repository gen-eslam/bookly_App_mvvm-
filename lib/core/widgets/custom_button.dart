import 'package:bookly_mvvm_bloc/core/extentions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants.dart';
import '../utils/styles.dart';

class CustomButton extends StatelessWidget {
  final Color backgroundColor, textColor;
  final double radius;
  final double? fontSize;
  final String text;
  final Side side;
  final Function()? onPressed;

  const CustomButton(
      {Key? key,
      required this.backgroundColor,
      this.textColor = Colors.white,
      required this.radius,
      required this.side,
      this.fontSize,
      required this.onPressed,
      required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          padding: const EdgeInsets.all(15).r,
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: side.radiusSide(radius: radius.r),
          ),
        ),
        onPressed: onPressed,
        child: SizedBox(
          height: 20.h,
          child: Text(
            text,
            style: Styles.textStyle18.copyWith(
                color: textColor,
                fontWeight: FontWeight.w900,
                fontSize: fontSize),
          ),
        ),
      ),
    );
  }
}
