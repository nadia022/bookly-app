import 'package:bookly_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomSearchField extends StatelessWidget{
  const CustomSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
          decoration: InputDecoration(
            hintText: 'Search',
            suffixIcon: const Icon(
              Icons.search,
              color: Colors.grey,
            ),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(color: AppColors.white, width: 2)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(color: AppColors.white, width: 2)),
          ),
        );
    
  }

}