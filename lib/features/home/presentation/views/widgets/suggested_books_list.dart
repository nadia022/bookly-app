import 'package:bookly_app/features/home/presentation/views/widgets/book_cover_container.dart';
import 'package:flutter/material.dart';

class SuggestedBooksList extends StatelessWidget{
  const SuggestedBooksList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: BookCoverContainer(),
                    );
                  }),
            );
  }

}