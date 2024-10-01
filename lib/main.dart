import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:the_menu/core/routes/app_pages.dart';
import 'package:the_menu/core/routes/app_routes.dart';
import 'package:the_menu/core/theme/app_theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemStatusBarContrastEnforced: false,
      systemNavigationBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarIconBrightness: Brightness.dark,
    ),
  );

  await Future.wait([
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge),
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]),
  ]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'The Menu',
      getPages: AppPages.pages,
      initialRoute: AppRoutes.root,
      defaultTransition: Transition.fade,
      themeMode: ThemeMode.light,
      theme: const AppTheme(isDark: false).get(),
      darkTheme: const AppTheme(isDark: true).get(),
      debugShowCheckedModeBanner: false,
    );
  }
}
