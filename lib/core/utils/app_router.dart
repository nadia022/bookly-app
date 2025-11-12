import 'package:bookly_app/features/home/presentation/views/book_details_view.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:bookly_app/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static const String homeViewPath='/homeView';
  static const String bookDetailsViewPath='/bookDetailsView';
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
      builder: ( context, state) => const BookDetailsView(),
      ),
    ]
    );
}