import 'package:bookly_app/core/utils/app_assets.dart';
import 'package:bookly_app/core/utils/app_styles.dart';
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
          Container(
            margin: EdgeInsets.symmetric(horizontal: width * 0.05),
            width: width * 0.2,
            height: height * 0.16,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: const DecorationImage(
                    image: AssetImage(AppAssets.test2), fit: BoxFit.fill)),
          ),
           Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                maxLines: 2,
                "Harry Potter \nand the Goblet of Fire",
                style: AppStyles.semibold20.copyWith( fontFamily: 'GT Sectra Fine',
),
              ),
              const Opacity(
                opacity: 0.7,
                child: Text(
                  "J.K. Rowling",
                  style: AppStyles.medium14
                ),
              ),
              const Row(
                children: [
                  Text(
                    "19.99\$",
                    style: AppStyles.bold20,
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Icon(
                    Icons.star,
                    color: Color.fromARGB(255, 237, 201, 95),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Text(
                    "4.8",
                    style:AppStyles.medium16 ,
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Opacity(
                    opacity: 0.5,
                    child: Text(
                      "(2350)",
                      style: AppStyles.regular14
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
