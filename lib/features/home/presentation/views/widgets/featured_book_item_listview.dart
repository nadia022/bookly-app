import 'package:bookly_app/features/home/presentation/views/widgets/featured_book_item.dart';
import 'package:flutter/material.dart';

class FeaturedBookItemListview extends StatelessWidget {
  const FeaturedBookItemListview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const FeaturedBookItem();
        });
  }
}
