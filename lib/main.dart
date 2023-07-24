import 'package:base_project_with_cubit/core/managers/preferences_manager.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'core/route_paths.dart';
import 'presentation/home/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  final sharedPreferences = await SharedPreferences.getInstance();
  runApp(
      _getTranslateWidget(
          child: _getProviderScopeWidget(sharedPreferences)
      )
  );
}

Widget _getTranslateWidget({required Widget child}) {
  return EasyLocalization(
      child: child,
      supportedLocales: [Locale('en', 'US'),Locale('es', 'ES')],
      fallbackLocale: Locale('en','US'),
      path: 'assets/translations'
  );
}

Widget _getProviderScopeWidget(SharedPreferences sharedPreferences) {
  return ProviderScope(
    overrides: [
      sharedPreferencesProvider.overrideWithValue(sharedPreferences)
    ],
    child: MyApp(),
  );
}



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: 'Base template',
      initialRoute: RoutePaths.Home,
      routes: {
        RoutePaths.Home: (context) => HomePage(),
      },
    );
  }
}
