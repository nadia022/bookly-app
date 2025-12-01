import 'package:bookly_app/features/home/data/model/book_model/item.dart';
import 'package:bookly_app/features/home/presentation/manager/suggested_books_cubit/suggested_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsView  extends StatefulWidget{
  BookDetailsView({super.key , required this.item});
  Item item;

  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
   BlocProvider.of<SuggestedBooksCubit>(context).featchSuggestedBooks(category: widget.item.volumeInfo?.categories![0]??"Programing");
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: BookDetailsViewBody(
        book: widget.item,
      ),
    );
  }
}