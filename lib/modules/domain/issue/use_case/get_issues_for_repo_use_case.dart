import 'package:dartz/dartz.dart';
import 'package:github_repo_app/modules/domain/issue/model/issue.dart';
import 'package:github_repo_app/modules/domain/issue/repository/issue_repository.dart';
import 'package:github_repo_app/modules/foundation/core/use_case.dart';
import 'package:github_repo_app/modules/foundation/errors/app_error.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetIssuesForRepoUseCase implements ParamUseCase<AppError, IssuesList> {
  GetIssuesForRepoUseCase(this._issueRepository);

  final IssueRepository _issueRepository;

  @override
  Future<Either<AppError, IssuesList>> call({required dynamic param, required dynamic param2}) {
    return _issueRepository.getIssuesForRepo(param, param2);
  }
}