import 'package:bookly/Constans.dart';
import 'package:bookly/Features/Home/data/repos/HomeRepoImplment.dart';
import 'package:bookly/Features/Home/presentation/Mangers/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/core/utilts/ServiceLocator.dart';
import 'package:bookly/core/utilts/app_router.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Features/Home/presentation/Mangers/NewsetBooks/newset_books_cubit.dart';
import 'core/utilts/ApiService.dart';

void main() {
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) =>
                FeaturedBooksCubit(HomeRepoImplement(ApiService(Dio())))
                  ..fetchFeaturedBooks()),
        BlocProvider(
            create: (context) =>
                NewsetBooksCubit(HomeRepoImplement(ApiService(Dio()))))
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: KPrimaryColor,
          textTheme: GoogleFonts.aBeeZeeTextTheme(ThemeData.dark().textTheme),
        ),
      ),
    );
  }
}
