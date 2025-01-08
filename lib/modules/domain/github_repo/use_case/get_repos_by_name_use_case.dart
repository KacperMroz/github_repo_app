import 'package:dartz/dartz.dart';
import 'package:github_repo_app/modules/domain/github_repo/model/repository.dart';
import 'package:github_repo_app/modules/domain/github_repo/repository/github_repo_repository.dart';
import 'package:github_repo_app/modules/foundation/core/use_case.dart';
import 'package:github_repo_app/modules/foundation/errors/app_error.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetReposByNameUseCase
    implements ParamUseCase<AppError, Repository, GetReposByNameParams> {
  GetReposByNameUseCase(this._githubRepoRepository);

  final GithubRepoRepository _githubRepoRepository;

  @override
  Future<Either<AppError, Repository>> call({required GetReposByNameParams param}) {
    return _githubRepoRepository.getReposByName(param.name);
  }
}

class GetReposByNameParams {
  GetReposByNameParams({
    required this.name,
  });

  final String name;
}
