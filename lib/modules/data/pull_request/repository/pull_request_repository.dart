import 'package:dartz/dartz.dart';
import 'package:github_repo_app/modules/data/pull_request/api/api_client.dart';
import 'package:github_repo_app/modules/domain/pull_request/model/pull_request.dart';
import 'package:github_repo_app/modules/domain/pull_request/repository/pull_request_repository.dart';
import 'package:github_repo_app/modules/foundation/errors/app_error.dart';
import 'package:github_repo_app/modules/foundation/utils/exception_handler.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: PullRequestRepository)
class PullRequestRepositoryImpl extends PullRequestRepository {
  final PullRequestApiClient apiClient;

  PullRequestRepositoryImpl(this.apiClient);

  @override
  Future<Either<AppError, List<PullRequest>>> getPullRequestsForRepo(
    String owner,
    String repoName,
  ) async {
    return ExceptionHandler.runWithErrorsHandling(() async {
      final response = await apiClient.getPullRequestsForRepo(owner, repoName);
      return response;
    });
  }
}
