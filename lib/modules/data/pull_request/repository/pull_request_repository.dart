import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:github_repo_app/modules/domain/pull_request/model/pull_request.dart';
import 'package:github_repo_app/modules/domain/pull_request/repository/pull_request_repository.dart';
import 'package:github_repo_app/modules/foundation/errors/app_error.dart';
import 'package:github_repo_app/modules/foundation/utils/exception_handler.dart';
import 'package:github_repo_app/services/api_client.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: PullRequestRepository)
class PullRequestRepositoryImpl extends PullRequestRepository {
  final ApiClient apiClient;

  PullRequestRepositoryImpl(this.apiClient);

  @override
  Future<Either<AppError, PullRequestsList>> getPullRequestsForRepo(
      String owner, String repoName) async {
    return ExceptionHandler.runWithErrorsHandling(() async {
      final Response response = await apiClient
          .get('https://api.github.com/repos/$owner/$repoName/pulls');
      return PullRequestsList.fromJson({'items': response.data});
    });
  }
}
