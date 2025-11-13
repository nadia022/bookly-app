import 'package:bookly_app/core/utils/app_styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_book_item.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget{
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const FeaturedBookItem(),
            const SizedBox(
              height: 42,
            ),
            const Text(
              "The Jungle Book",
              style: AppStyles.regular30,
            ),
            const SizedBox(
              height: 12,
            ),
            Opacity(
              opacity: 0.7,
              child: Text("Rudyard Kipling",
                  style: AppStyles.regular18
                      .copyWith(fontStyle: FontStyle.italic)),
            ),
      ],
    );
  }

}