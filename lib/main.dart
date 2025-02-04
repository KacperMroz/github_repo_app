import 'package:flutter/material.dart';
import 'package:github_repo_app/app/env_config.dart';
import 'package:github_repo_app/app/flavor_config.dart';
import 'package:github_repo_app/injection/injection.dart';

import 'app/app.dart';

void main() {
  FlavorConfig(
    name: EnvironmentConfig.FLAVOR_NAME,
    variables: {
      'API_URL': EnvironmentConfig.API_URL,
    },
  );
  initAppConfig();
}

Future<void> initAppConfig() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  runApp(GitHubRepoApp());
}
