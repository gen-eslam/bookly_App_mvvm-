import 'package:bookly_mvvm_bloc/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../../constants.dart';
import '../../../../../../core/widgets/custom_button.dart';

class CustomBooksButtonAction extends StatelessWidget {
  final double radius;
  final BookModel? bookModel;
  const CustomBooksButtonAction(
      {super.key, this.radius = 15, required this.bookModel});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomButton(
          backgroundColor: Colors.white,
          radius: radius,
          side: Side.lift,
          text: "free",
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
          onPressed: () async {
            Uri uri = Uri.parse(bookModel!.volumeInfo!.previewLink!);
            if (await canLaunchUrl(uri)) {
              await launchUrl(uri, mode: LaunchMode.externalApplication);
            }
          },
        ),
      ],
    );
  }
}
