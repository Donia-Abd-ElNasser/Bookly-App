
import 'package:booklyapp/Features/Splash/data/repos/home_repos_impl.dart';
import 'package:booklyapp/core/services/api_services.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  getIt.registerSingleton<ApiServices>(ApiServices(Dio()));
  getIt.registerSingleton<HomeReposImpl>((HomeReposImpl(getIt<ApiServices>())));
}