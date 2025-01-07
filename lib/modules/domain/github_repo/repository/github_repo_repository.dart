import 'package:dartz/dartz.dart';
import 'package:github_repo_app/modules/domain/github_repo/model/repository.dart';
import 'package:github_repo_app/modules/foundation/errors/app_error.dart';

abstract class GithubRepoRepository {
  Future<Either<AppError, Repository>> getReposByName(String name);
}
