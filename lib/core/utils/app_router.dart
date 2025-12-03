import 'package:bookly_app/core/utils/services_locator.dart';
import 'package:bookly_app/core/data/model/book_model/item.dart';
import 'package:bookly_app/core/data/repo/home_repo_impl.dart';
import 'package:bookly_app/features/home/presentation/manager/suggested_books_cubit/suggested_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/book_details_view.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:bookly_app/features/search/presentation/views/search_view.dart';
import 'package:bookly_app/features/splash/presentation/views/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static const String homeViewPath='/homeView';
  static const String bookDetailsViewPath='/bookDetailsView';
  static const String searchViewPath='/searchView';

  static GoRouter router=GoRouter(
    routes: [
      GoRoute(
      path: '/',
      builder: ( context, state) =>  SplashView(),
      ),
      GoRoute(
      path: homeViewPath,
      builder: ( context, state) => const HomeView(),
      ),
       GoRoute(
      path: bookDetailsViewPath,
      builder: ( context, state) => BlocProvider(
        create: (context) => SuggestedBooksCubit(homeRepo: ServicesLocator.getIt.get<HomeRepoImpl>()),
        child:  BookDetailsView(item: state.extra as Item,)),
      ),
      GoRoute(
      path: searchViewPath,
      builder: ( context, state) => const SearchView(),
      ),
    ]
    );
}