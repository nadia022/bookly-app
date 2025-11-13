import 'package:bookly_app/core/utils/app_colors.dart';
import 'package:bookly_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class BooksRatingRow extends StatelessWidget {
  const BooksRatingRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.star,
          color: AppColors.yellow,
        ),
        SizedBox(
          width: 3,
        ),
        Text(
          "4.8",
          style: AppStyles.medium16,
        ),
        SizedBox(
          width: 3,
        ),
        Opacity(
          opacity: 0.5,
          child: Text("(2350)", style: AppStyles.regular14),
        ),
      ],
    );
  }
}
