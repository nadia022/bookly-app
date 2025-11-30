import 'package:bookly_app/core/utils/app_colors.dart';
import 'package:bookly_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class BooksRatingRow extends StatelessWidget {
   BooksRatingRow({super.key,required this.maturityRating });
   String maturityRating;

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
       const Icon(
          Icons.star,
          color: AppColors.yellow,
        ),
        const SizedBox(
          width: 3,
        ),
        Text(
          maturityRating,
          style: AppStyles.medium16,
        ),
        const SizedBox(
          width: 3,
        ),
        // Opacity(
        //   opacity: 0.5,
        //   child: Text("($ratingsCount)", style: AppStyles.regular14),
        // ),
      ],
    );
  }
}
