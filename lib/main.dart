import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:your_book_app/Features/home/data/repos/home_repo_impl.dart';
import 'package:your_book_app/Features/home/presentation/view_models/featured_books_cupit/featured_books_cubit.dart';
import 'package:your_book_app/Features/home/presentation/view_models/newest_books_cupit/newest_books_cubit.dart';
import 'package:your_book_app/constants.dart';
import 'package:your_book_app/core/utils/app_router.dart';
import 'package:your_book_app/core/utils/service_locater.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
      overlays: [SystemUiOverlay.bottom]);
  setupServiceLocater();
  runApp(const YourBookApp());
}

class YourBookApp extends StatelessWidget {
  const YourBookApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
            getIt.get<HomeRepoImpl>(),
          )..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) => NewestBooksCubit(
            getIt.get<HomeRepoImpl>(),
          )..fetchNewestBooks(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme:
            ThemeData.dark().copyWith(scaffoldBackgroundColor: kPrimaryColor),
      ),
    );
  }
}
