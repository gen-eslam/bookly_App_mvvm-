import 'package:flutter/material.dart';

import 'custom_list_view_item.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: CustomListViewItem()),
      ),
    );
  }
}
