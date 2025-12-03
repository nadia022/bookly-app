import 'package:bookly_app/core/function/custom_launch_url.dart';
import 'package:bookly_app/core/utils/app_colors.dart';
import 'package:bookly_app/core/utils/app_styles.dart';
import 'package:bookly_app/core/widget/custom_button.dart';
import 'package:bookly_app/core/data/model/book_model/item.dart';
import 'package:flutter/material.dart';

class PriceButtonSection extends StatelessWidget{
   PriceButtonSection({super.key, required this.book});
   Item book;
  @override
  Widget build(BuildContext context) {
    return Row(
              children: [
                Expanded(
                    child: CustomButton(
                  text: "Free",
                  onPressed: (){},
                  backgroundColor: AppColors.white,
                  textStyle: AppStyles.bold18,
                  topLeftRadius: const Radius.circular(12),
                  bottomLeftRadius: const Radius.circular(12),
                )),
                Expanded(
                    child: CustomButton(
                  onPressed: () {
                    customLauchUrl(context, book.volumeInfo!.previewLink!);
                  },
                  text:getText(),
                  backgroundColor: AppColors.orange,
                  textStyle: AppStyles.regular16,
                  topRightRaduis: const Radius.circular(12),
                  bottomRightRaduis: const Radius.circular(12),
                )),
              ],
            );
  }

  String getText(){
    if(book.volumeInfo?.previewLink==null){
      return "Not Available";
    }
    return "Free preview";
  }

}