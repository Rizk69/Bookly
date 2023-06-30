import 'package:bookly/Features/Home/data/models/bookly_models.dart';
import 'package:bookly/Features/Home/data/repos/HomeRepoImplment.dart';
import 'package:bookly/Features/Home/presentation/Mangers/Similar_Books/similar_books_cubit.dart';
import 'package:bookly/Features/Home/presentation/view/Book_Details_View.dart';
import 'package:bookly/Features/Home/presentation/view/Home.dart';
import 'package:bookly/Features/Search/presentaion/Views/SearchView.dart';
import 'package:bookly/core/utilts/ApiService.dart';
import 'package:bookly/core/utilts/ServiceLocator.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../Features/Splash/presentation/views/Splash.dart';

abstract class AppRouter {
  static String KHomeView = '/HomeView';
  static String KBookDetailsView = '/BookDetailsView';
  static String KSearchView = '/SearchView';

  static final GoRouter router = GoRouter(routes: <RouteBase>[
    GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const SplashView();
        }),
    GoRoute(
        path: KHomeView,
        builder: (BuildContext context, GoRouterState state) {
          return const HomeView();
        }),
    GoRoute(
        path: KBookDetailsView,
        builder: (BuildContext context, GoRouterState state) {
          return BlocProvider(
            create: (context) =>
                SimilarBooksCubit(HomeRepoImplement(ApiService(Dio()))),
            child: BookDetailsView(
              booklyModels: state.extra as BooklyModels,
            ),
          );
        }),
    GoRoute(
        path: KSearchView,
        builder: (BuildContext context, GoRouterState state) {
          return const SearchView();
        })
  ]);
}
