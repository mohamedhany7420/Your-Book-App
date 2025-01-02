import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:your_book_app/Features/home/presentation/views/book_details_view.dart';
import 'package:your_book_app/Features/home/presentation/views/home_view.dart';
import 'package:your_book_app/Features/splash/presentation/views/splash_view.dart';

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
          return const BookDetailsView();
        },
      ),

    ],
  );
}