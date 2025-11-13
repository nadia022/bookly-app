import 'package:bookly_app/core/utils/app_assets.dart';
import 'package:flutter/material.dart';

class BookCoverContainer extends StatelessWidget{
  const BookCoverContainer({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
            width: width * 0.2,
            height: height * 0.16,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: const DecorationImage(
                    image: AssetImage(AppAssets.test2), fit: BoxFit.fill)),
          );
  }

}