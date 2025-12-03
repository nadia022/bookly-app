import 'package:bookly_app/core/utils/app_assets.dart';
import 'package:bookly_app/core/utils/app_styles.dart';
import 'package:bookly_app/features/home/data/model/book_model/item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_cover_widget.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/books_rating_row.dart';
import 'package:flutter/material.dart';

class NewestBookItem extends StatelessWidget {
  NewestBookItem({super.key, required this.book});
  Item book;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(bottom: height * 0.02),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.05),
            child: BookCoverWidget(
              book: book,
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  textAlign: TextAlign.start,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  book.volumeInfo?.title ?? "No Title",
                  style: AppStyles.semibold20.copyWith(
                    fontFamily: 'GT Sectra Fine',
                  ),
                ),
                Opacity(
                  opacity: 0.7,
                  child: Text(book.volumeInfo?.authors?[0] ?? "No Author",
                      style: AppStyles.medium14),
                ),
                Row(
                  children: [
                    const Text(
                      "0 \$",
                      style: AppStyles.bold20,
                    ),
                    const Spacer(),
                    // SizedBox(
                    //   width: width * 0.2,
                    // ),
                    BooksRatingRow(
                      maturityRating:
                          book.volumeInfo?.maturityRating ?? "NO Rating",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
