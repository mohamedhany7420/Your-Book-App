import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:your_book_app/Features/home/data/repos/home_repo_impl.dart';
import 'package:your_book_app/Features/home/presentation/view_models/similar_books_cupit/similar_books_cubit.dart';
import 'package:your_book_app/Features/home/presentation/views/book_details_view.dart';
import 'package:your_book_app/Features/home/presentation/views/home_view.dart';
import 'package:your_book_app/Features/search/presentation/views/search_view.dart';
import 'package:your_book_app/Features/splash/presentation/views/splash_view.dart';
import 'package:your_book_app/core/utils/service_locater.dart';

abstract class AppRouter{
  static final router  = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const SplashView();
        },
      ),
      GoRoute(
        path: '/homeView',
        builder: (BuildContext context, GoRouterState state) {
          return const HomeView();
        },
      ),
      GoRoute(
        path: '/bookDetailsView',
        builder: (BuildContext context, GoRouterState state) {
          return BlocProvider(
            create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImpl>()),
              child: const BookDetailsView(

              )
          );
        },
      ),
      GoRoute(
        path: '/searchView',
        builder: (BuildContext context, GoRouterState state) {
          return const SearchView();
        },
      ),
    ],
  );
}