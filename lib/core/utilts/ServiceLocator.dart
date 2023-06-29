import 'package:bookly/Features/Home/data/repos/HomeRepoImplment.dart';
import 'package:bookly/core/utilts/ApiService.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImplement>(
      HomeRepoImplement(getIt.get<ApiService>()));
}
