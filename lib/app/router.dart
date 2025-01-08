import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_repo_app/features/home/bloc/home_cubit.dart';
import 'package:github_repo_app/features/home/views/home_page.dart';
import 'package:github_repo_app/features/issues/cubit/issues_cubit.dart';
import 'package:github_repo_app/features/issues/views/issues_page.dart';
import 'package:github_repo_app/features/pull_request/cubit/pull_request_cubit.dart';
import 'package:github_repo_app/features/pull_request/views/pull_request_page.dart';
import 'package:github_repo_app/features/splash/bloc/splash_bloc.dart';
import 'package:github_repo_app/features/splash/views/splash_page.dart';
import 'package:github_repo_app/injection/injection.dart';
import 'package:github_repo_app/services/navigation_service.dart';
import 'package:go_router/go_router.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

final router =
    GoRouter(navigatorKey: _rootNavigatorKey, initialLocation: '/', routes: [
  GoRoute(
    path: NavigationService.splash,
    builder: (context, state) => BlocProvider(
      create: (_) => getIt.get<SplashCubit>()..initialize(),
      child: const SplashPage(),
    ),
  ),
  GoRoute(
      path: NavigationService.home,
      builder: (context, state) => BlocProvider(
            create: (_) => getIt.get<HomeCubit>(),
            child: const HomePage(),
          ),
      routes: [
        GoRoute(
            path: NavigationService.issue,
            name: 'issuePage',
            builder: (context, state) {
              final owner = state.pathParameters['owner'] ?? '';
              final repoName = state.pathParameters['repoName'] ?? '';
              return BlocProvider(
                  create: (_) => getIt.get<IssuesCubit>()
                    ..getIssuesByRepo(owner, repoName),
                  child: IssuesPage(
                    owner: owner,
                    repoName: repoName,
                  ),
                );
            }),
        GoRoute(
            path: NavigationService.pullRequest,
            name: 'pullRequestPage',
            builder: (context, state) {
              final owner = state.pathParameters['owner'] ?? '';
              final repoName = state.pathParameters['repoName'] ?? '';
              return BlocProvider(
                  create: (_) => getIt.get<PullRequestCubit>()
                    ..getPullRequestByRepo(owner, repoName),
                  child: PullRequestPage(
                    owner: owner,
                    repoName: repoName,
                  ),
                );
            })
      ]),
]);
