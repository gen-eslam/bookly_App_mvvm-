import 'package:flutter/material.dart';

import '../../../../../../../constants.dart';
import '../../../../../../../core/utils/styles.dart';
import '../book_rating.dart';

class ItemBodyView extends StatelessWidget {
  const ItemBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width / 2,
            child: Text(
              "Harry Potter and the Goblet of Fire",
              style: Styles.textStyle20.copyWith(fontFamily: kGtSetraFine),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(
            height: 3,
          ),
          const Text("J.K. Rowling", style: Styles.textStyle14),
          // const SizedBox(
          //   height: 3,
          // ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "19.99 €",
                  style: Styles.textStyle20.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const BookRating(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
