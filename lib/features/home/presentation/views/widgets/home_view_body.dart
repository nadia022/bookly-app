import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/app_styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_listview.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_book_item_listview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      // physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(top: height * 0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.062),
                  child: const CustomAppBar(),
                ),
                SizedBox(
                  height: height * 0.032,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: width * 0.05),
                  height: height * 0.3,
                  child:  FeaturedBookItemListview(),
                ),
                SizedBox(
                  height: height * 0.04,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                  child: const Text(
                    "Best Seller",
                    style: AppStyles.semibold20,
                  ),
                ),
              ],
            ),
          ),
        ),
        SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: height * 0.015),
            child: GestureDetector(
                onTap: () {
                  GoRouter.of(context).push(AppRouter.bookDetailsViewPath);
                },
                child: const BestSellerListview()),
          ),
        ),
      ],
    );
    // return Padding(
    //   padding: EdgeInsets.symmetric(vertical: height * 0.05),
    //   child: SingleChildScrollView(
    //     child: Column(
    //       crossAxisAlignment: CrossAxisAlignment.start,
    //       children: [
    //         Padding(
    //           padding: EdgeInsets.symmetric(horizontal: width * 0.062),
    //           child: const CustomAppBar(),
    //         ),
    //         SizedBox(
    //           height: height * 0.032,
    //         ),
    //         Container(
    //           margin: EdgeInsets.symmetric(horizontal: width * 0.057),
    //           height: height * 0.3,
    //           child: const FeaturedBookItemListview(),
    //         ),
    //         SizedBox(
    //           height: height * 0.05,
    //         ),
    //         Padding(
    //           padding: EdgeInsets.symmetric(horizontal: width * 0.057),
    //           child: const Text(
    //             "Best Seller",
    //             style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    //           ),
    //         ),
    //         SizedBox(
    //           height: height * 0.03,
    //         ),
    //         BestSellerListview(),
    //       ],
    //     ),
    //   ),
    // );
  }
}
