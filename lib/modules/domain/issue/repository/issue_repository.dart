import 'package:dartz/dartz.dart';
import 'package:github_repo_app/modules/domain/issue/model/issue.dart';
import 'package:github_repo_app/modules/foundation/errors/app_error.dart';

abstract class IssueRepository {
  Future<Either<AppError, IssuesList>> getIssuesForRepo(
      String owner, String repoName);
}
