import 'package:flutter/material.dart';
import 'package:github_repo_app/app/router.dart';
import 'package:github_repo_app/modules/foundation/theme/app_colors.dart';

class GitHubRepoApp extends StatelessWidget {
  GitHubRepoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'GitHubRepoApp',
      theme: customLightTheme,
      routeInformationProvider: router.routeInformationProvider,
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      debugShowCheckedModeBanner: false,
    );
  }

  final ThemeData customLightTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.appBackgroundColor,
  );
}
