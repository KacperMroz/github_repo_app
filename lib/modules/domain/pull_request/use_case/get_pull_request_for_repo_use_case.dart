import 'package:dartz/dartz.dart';
import 'package:github_repo_app/modules/domain/pull_request/model/pull_request.dart';
import 'package:github_repo_app/modules/domain/pull_request/repository/pull_request_repository.dart';
import 'package:github_repo_app/modules/foundation/core/use_case.dart';
import 'package:github_repo_app/modules/foundation/errors/app_error.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetPullRequestForRepoUseCase
    implements
        ParamUseCase<AppError, List<PullRequest>, GetPullRequestForRepoParams> {
  GetPullRequestForRepoUseCase(this._pullRequestRepository);

  final PullRequestRepository _pullRequestRepository;

  @override
  Future<Either<AppError, List<PullRequest>>> call(
      {required GetPullRequestForRepoParams param}) {
    return _pullRequestRepository.getPullRequestsForRepo(
        param.owner, param.repo);
  }
}

class GetPullRequestForRepoParams {
  GetPullRequestForRepoParams({
    required this.owner,
    required this.repo,
  });

  final String owner;
  final String repo;
}
