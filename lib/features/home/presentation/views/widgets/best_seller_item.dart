import 'package:bookly_app/core/utils/app_assets.dart';
import 'package:bookly_app/core/utils/app_styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_cover_container.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/books_rating_row.dart';
import 'package:flutter/material.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(bottom: height * 0.02),
      child: Row(
        children: [
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: width * 0.05),
            child: const BookCoverContainer(),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                maxLines: 2,
                "Harry Potter \nand the Goblet of Fire",
                style: AppStyles.semibold20.copyWith(
                  fontFamily: 'GT Sectra Fine',
                ),
              ),
              const Opacity(
                opacity: 0.7,
                child: Text("J.K. Rowling", style: AppStyles.medium14),
              ),
              Row(
                children: [
                  const Text(
                    "19.99\$",
                    style: AppStyles.bold20,
                  ),
                  SizedBox(
                    width: width * 0.2,
                  ),
                  const BooksRatingRow(),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
