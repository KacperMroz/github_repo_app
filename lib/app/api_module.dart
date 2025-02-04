import 'package:dio/dio.dart';
import 'package:github_repo_app/modules/data/github_repo/api/api_client.dart';
import 'package:github_repo_app/modules/data/issue/api/api_client.dart';
import 'package:github_repo_app/modules/data/pull_request/api/api_client.dart';
import 'package:injectable/injectable.dart';

@module
abstract class ApiModule {
  @injectable
  IssueApiClient provideIssueClient(Dio dio) => IssueApiClient(dio);

  @injectable
  PullRequestApiClient providePullRequestClient(Dio dio) =>
      PullRequestApiClient(dio);

  @injectable
  RepoApiClient provideRepoClient(Dio dio) => RepoApiClient(dio);
}
