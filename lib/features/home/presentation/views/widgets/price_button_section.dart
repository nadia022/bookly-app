import 'package:bookly_app/core/utils/app_colors.dart';
import 'package:bookly_app/core/utils/app_styles.dart';
import 'package:bookly_app/core/widget/custom_button.dart';
import 'package:flutter/material.dart';

class PriceButtonSection extends StatelessWidget{
  const PriceButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
            );
  }

}