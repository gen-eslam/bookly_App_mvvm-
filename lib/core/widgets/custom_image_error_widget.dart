import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/styles.dart';

class CustomImageError extends StatelessWidget {
  const CustomImageError({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.error,
                color: Colors.red,
              ),
              SizedBox(
                height: 10.h,
              ),
              FittedBox(
                child: Text("Image Not Found",
                    maxLines: 1,
                    style: Styles.textStyle14.copyWith(
                      color: Colors.red,
                    )),
              ),
            ],
          );
  }
}