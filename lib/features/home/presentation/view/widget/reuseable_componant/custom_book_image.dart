import 'package:bookly_mvvm_bloc/core/utils/styles.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBookImage extends StatelessWidget {
  final String? imageUrl;
  const CustomBookImage({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16).r,
            image: _decorationImage()),
        child: _errorWidget(),
      ),
    );
  }

  bool _checkImageIsNull() {
    return imageUrl == null;
  }

  Widget? _errorWidget() {
    return _checkImageIsNull()
        ? Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.error,
                color: Colors.red,
              ),
              SizedBox(
                height: 10.h,
              ),
              Text("Image Not Found",
                  style: Styles.textStyle14.copyWith(
                    color: Colors.red,
                  )),
            ],
          )
        : null;
  }

  DecorationImage? _decorationImage() {
    return !_checkImageIsNull()
        ? DecorationImage(
            fit: BoxFit.fill,
            image: CachedNetworkImageProvider(imageUrl!),
          )
        : null;
  }
}
