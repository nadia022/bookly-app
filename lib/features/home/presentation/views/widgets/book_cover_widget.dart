import 'package:bookly_app/core/utils/app_assets.dart';
import 'package:bookly_app/core/utils/app_colors.dart';
import 'package:bookly_app/core/widget/custom_loading_widget.dart';
import 'package:bookly_app/features/home/data/model/book_model/item.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BookCoverWidget extends StatelessWidget {
  BookCoverWidget({super.key, required this.book});
  Item book;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(right: 4),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: CachedNetworkImage(
            fit: BoxFit.fill,
            placeholder: (context, url) {
              return SizedBox(
                height: height * 0.3,
                width: width * 0.42,
                child: CustomLoadingWidget(),
              );
            },
            errorWidget: (context, url, error) {
              return Container(
                height: height * 0.3,
                width: width * 0.42,
                child: Center(
                    child: Icon(
                  Icons.error,
                  color: AppColors.white,
                )),
                decoration:
                    BoxDecoration(border: Border.all(color: AppColors.white)),
              );
            },
            //Book.volumeInfo?.imageLinks?.thumbnail ?? ""
            imageUrl: book.volumeInfo?.imageLinks?.thumbnail ?? ""),
      ),
    );
  }
}


// Container(
//             width: width * 0.2,
//             height: height * 0.16,
//             decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(8),
//                 image: const DecorationImage(
//                     image: AssetImage(AppAssets.test2), fit: BoxFit.fill)),
//           );