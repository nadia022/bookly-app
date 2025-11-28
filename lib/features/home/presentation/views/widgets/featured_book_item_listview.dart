import 'package:bookly_app/core/widget/custom_loading_widget.dart';
import 'package:bookly_app/features/home/presentation/manager/faetured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBookItemListview extends StatelessWidget {
   FeaturedBookItemListview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if(state is FeaturedBooksSuccess){
          return ListView.builder(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return  FeaturedBookItem(Book: state.books[index],);
            });
        }
        else if(state is FeaturedBooksFailure){
          return Center(child: Text(state.errorMessage),);
        }
        return CustomLoadingWidget();
        
      },
    );
  }
}
