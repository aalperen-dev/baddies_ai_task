import 'package:baddies_ai_task/core/theme/app_palette.dart';
import 'package:baddies_ai_task/core/theme/app_text_theme.dart';
import 'package:baddies_ai_task/features/home/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: ThemeData(
        textTheme: AppTextTheme.textTheme,
        scaffoldBackgroundColor: AppPalette.white,
        appBarTheme: AppBarTheme(
          backgroundColor: AppPalette.white,
        ),
      ),
      home: Scaffold(
        body: HomeScreen(),
      ),
    );
  }
}
