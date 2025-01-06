import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:your_book_app/Features/home/data/repos/home_repo_impl.dart';
import 'package:your_book_app/core/utils/api_service.dart';

final getIt = GetIt.instance;

void setupServiceLocater() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(getIt.get<ApiService>()));
}