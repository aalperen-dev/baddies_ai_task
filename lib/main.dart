import 'package:baddies_ai_task/core/theme/app_text_theme.dart';
import 'package:baddies_ai_task/features/auth/presentation/screens/login_screen.dart';
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
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: ThemeData(
        textTheme: AppTextTheme.textTheme,
      ),
      home: Scaffold(
        body: LoginScreen(),
      ),
    );
  }
}
