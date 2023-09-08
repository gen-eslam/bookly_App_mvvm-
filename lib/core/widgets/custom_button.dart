import 'package:bookly_mvvm_bloc/core/extentions.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import '../utils/styles.dart';

class CustomButton extends StatelessWidget {
  final Color backgroundColor, textColor;
  final double radius;
  final String text;
  final Side side;
  final Function()? onPressed;

  const CustomButton(
      {Key? key,
      required this.backgroundColor,
      this.textColor = Colors.white,
      required this.radius,
      required this.side,
      required this.onPressed,
      required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: side.radiusSide(radius: radius),
        ),
      ),
      onPressed: onPressed,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.37,
        alignment: Alignment.center,
        height: 35,
        child: Text(
          text,
          style: Styles.textStyle18.copyWith(
            color: textColor,
          ),
        ),
      ),
    );
  }
}
