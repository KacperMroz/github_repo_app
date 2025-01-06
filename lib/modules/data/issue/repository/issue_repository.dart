import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:github_repo_app/modules/domain/issue/model/issue.dart';
import 'package:github_repo_app/modules/domain/issue/repository/issue_repository.dart';
import 'package:github_repo_app/modules/foundation/errors/app_error.dart';
import 'package:github_repo_app/modules/foundation/utils/exception_handler.dart';
import 'package:github_repo_app/services/api_client.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: IssueRepository)
class IssueRepositoryImpl extends IssueRepository {
  final ApiClient apiClient;

  IssueRepositoryImpl(this.apiClient);

  @override
  Future<Either<AppError, IssuesList>> getIssuesForRepo(String owner, String repo) async {
    return ExceptionHandler.runWithErrorsHandling(() async {
      final Response response = await apiClient.get('https://api.github.com/repos/$owner/$repo/issues');
      return IssuesList.fromJson({'items': response.data});
    });
  }
}