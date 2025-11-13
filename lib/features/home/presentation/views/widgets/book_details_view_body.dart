import 'package:bookly_app/core/utils/app_colors.dart';
import 'package:bookly_app/core/utils/app_styles.dart';
import 'package:bookly_app/core/widget/custom_button.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_cover_container.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_details_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/books_rating_row.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_book_item.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
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
            const SizedBox(
              height: 20,
            ),
            const BooksRatingRow(),
            const SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Expanded(
                    child: CustomButton(
                  text: "19.99€",
                  backgroundColor: AppColors.white,
                  textStyle: AppStyles.bold18,
                  topLeftRadius: const Radius.circular(12),
                  bottomLeftRadius: const Radius.circular(12),
                )),
                Expanded(
                    child: CustomButton(
                  text: "Free preview",
                  backgroundColor: AppColors.orange,
                  textStyle: AppStyles.regular16,
                  topRightRaduis: const Radius.circular(12),
                  bottomRightRaduis: const Radius.circular(12),
                )),
              ],
            ),
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
            Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: BookCoverContainer(),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
