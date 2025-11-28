import 'package:bookly_app/core/utils/app_colors.dart';
import 'package:bookly_app/core/widget/custom_loading_widget.dart';
import 'package:bookly_app/features/home/data/model/book_model/item.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class FeaturedBookItem extends StatelessWidget {
  FeaturedBookItem({super.key, required this.Book});
  Item Book;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * 0.02),
      child: SizedBox(
        height: height * 0.3,
        width: width * 0.42,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
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
                  child:  Center(
                      child: Icon(
                    Icons.error,
                    color: AppColors.white,
                  )),
                  decoration:
                      BoxDecoration(border: Border.all(color: AppColors.white)),
                );
              },
              //Book.volumeInfo?.imageLinks?.thumbnail ?? ""
              imageUrl: Book.volumeInfo?.imageLinks?.thumbnail ?? ""),
        ),
      ),
    );
  }
}


// Container(
//       margin: EdgeInsets.symmetric(horizontal: width * 0.02),
//       height: height * 0.3,
//       width: width * 0.42,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(16),
//         image:  DecorationImage(
//             image: NetworkImage(Book.volumeInfo?.imageLinks?.thumbnail??""), fit: BoxFit.fill),
//       ),
//     );