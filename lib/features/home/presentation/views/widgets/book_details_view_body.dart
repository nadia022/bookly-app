import 'package:bookly_app/core/utils/app_styles.dart';
import 'package:bookly_app/features/home/data/model/book_model/item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_details_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_details_section.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/books_rating_row.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/price_button_section.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/suggested_books_list.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
   BookDetailsViewBody({super.key,required this.book});
   Item book;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const BookDetailsAppBar(),
            const SizedBox(
              height: 22,
            ),
            const BookDetailsSection(),
            const SizedBox(
              height: 20,
            ),
             BooksRatingRow(
              maturityRating: book.volumeInfo?.maturityRating??"No Rating",
             ),
            const SizedBox(
              height: 40,
            ),
            const PriceButtonSection(),
            SizedBox(
              height: height * 0.055,
            ),
            const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "You can also like",
                  style: AppStyles.semibold14,
                )),
            const SizedBox(
              height: 20,
            ),
             SuggestedBooksList(
              book: book,
             ),
          ],
        ),
      ),
    );
  }
}
