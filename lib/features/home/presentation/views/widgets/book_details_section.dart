import 'package:bookly_app/core/utils/app_styles.dart';
import 'package:bookly_app/core/data/model/book_model/item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_book_item.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  BookDetailsSection({super.key, required this.book});
  Item book;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FeaturedBookItem(
          book: book,
        ),
        const SizedBox(
          height: 37,
        ),
        Text(
          // maxLines: 2,
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          book.volumeInfo?.title ?? "No Title",
          style: AppStyles.regular30,
        ),
        const SizedBox(
          height: 12,
        ),
        Opacity(
          opacity: 0.7,
          child: Text(book.volumeInfo?.authors![0] ?? "No Author",
              style: AppStyles.regular18.copyWith(fontStyle: FontStyle.italic)),
        ),
      ],
    );
  }
}
