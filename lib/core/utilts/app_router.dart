import 'package:bookly/Features/Home/presentation/view/Book_Details_View.dart';
import 'package:bookly/Features/Home/presentation/view/Home.dart';
import 'package:bookly/Features/Search/presentaion/Views/SearchView.dart';
import 'package:flutter/cupertino.dart';
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
          return const BookDetailsView();
        }),
    GoRoute(
        path: KSearchView,
        builder: (BuildContext context, GoRouterState state) {
          return const SearchView();
        })
  ]);
}
