import 'package:dartz/dartz.dart';
import 'package:github_repo_app/modules/data/issue/api/api_client.dart';
import 'package:github_repo_app/modules/domain/issue/model/issue.dart';
import 'package:github_repo_app/modules/domain/issue/repository/issue_repository.dart';
import 'package:github_repo_app/modules/foundation/errors/app_error.dart';
import 'package:github_repo_app/modules/foundation/utils/exception_handler.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: IssueRepository)
class IssueRepositoryImpl extends IssueRepository {
  final IssueApiClient apiClient;

  IssueRepositoryImpl(this.apiClient);

  @override
  Future<Either<AppError, List<Issue>>> getIssuesForRepo(
    String owner,
    String repoName,
  ) async {
    return ExceptionHandler.runWithErrorsHandling(() async {
      final response = await apiClient.getIssuesForRepo(owner, repoName);
      return response;
    });
  }
}
