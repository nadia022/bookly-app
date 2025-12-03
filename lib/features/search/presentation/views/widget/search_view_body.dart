import 'package:bookly_app/core/utils/app_colors.dart';
import 'package:bookly_app/features/search/presentation/views/widget/custom_search_field.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 20),
      child: Column(
        children: [CustomSearchField()],
      ),
    );
  }
}
