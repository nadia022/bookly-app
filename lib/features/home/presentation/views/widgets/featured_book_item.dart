import 'package:bookly_app/features/home/data/model/book_model/item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_cover_widget.dart';
import 'package:flutter/material.dart';

class FeaturedBookItem extends StatelessWidget {
  FeaturedBookItem({super.key, required this.book});
  Item book;
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
            child: BookCoverWidget(book: book)),
      ),
    );
  }
}
