import 'package:flutter/material.dart';
import 'package:github_repo_app/injection/injection.dart';
import 'app/app.dart';

void main() {
  configureDependencies();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(GitHubRepoApp());
}


