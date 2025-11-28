import 'package:bookly_app/api/api_services.dart';
import 'package:bookly_app/features/home/data/repo/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

class ServicesLocator {
 static final  getIt = GetIt.instance;

  static void setupServicesLocator() {
    getIt.registerSingleton<ApiServices>(ApiServices(Dio()));
    getIt.registerSingleton<HomeRepoImpl>(
        HomeRepoImpl(apiServices: getIt.get<ApiServices>()));
  }
}
