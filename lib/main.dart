import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:your_book_app/constants.dart';
import 'package:your_book_app/core/utils/app_router.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [SystemUiOverlay.bottom]);
  runApp(const YourBookApp());
}
class YourBookApp extends StatelessWidget {
  const YourBookApp({super.key});
  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimaryColor
      ),
    );
  }
}
