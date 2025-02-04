import 'package:dartz/dartz.dart';
import 'package:github_repo_app/modules/domain/pull_request/model/pull_request.dart';
import 'package:github_repo_app/modules/foundation/errors/app_error.dart';

abstract class PullRequestRepository {
  Future<Either<AppError, List<PullRequest>>> getPullRequestsForRepo(
    String owner,
    String repoName,
  );
}
