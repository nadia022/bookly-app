import 'package:bookly_app/core/widget/custom_loading_widget.dart';
import 'package:bookly_app/features/home/data/model/book_model/item.dart';
import 'package:bookly_app/features/home/presentation/manager/suggested_books_cubit/suggested_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_cover_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SuggestedBooksList extends StatelessWidget {
  SuggestedBooksList({super.key, required this.book});
  Item book;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SuggestedBooksCubit, SuggestedBooksState>(
      builder: (context, state) {
        if(state is SuggestedBooksSuccess){
          return Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount:state.books.length ,
                  itemBuilder: (context, index) {
                    return  Padding(
                      padding:const EdgeInsets.symmetric(horizontal: 5),
                      child: BookCoverContainer(
                         book: state.books[index],
                      ),
                    );
                  }),
            );
        }
        else if(state is SuggestedBooksFailure){
          return Center(
            child: Text(state.errorMessage),
          );
        }
        return CustomLoadingWidget();
        
      },
    );
  }
}
