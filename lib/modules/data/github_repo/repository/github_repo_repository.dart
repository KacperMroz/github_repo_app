import 'package:dartz/dartz.dart';
import 'package:github_repo_app/modules/data/github_repo/api/api_client.dart';
import 'package:github_repo_app/modules/domain/github_repo/model/repository.dart';
import 'package:github_repo_app/modules/domain/github_repo/repository/github_repo_repository.dart';
import 'package:github_repo_app/modules/foundation/errors/app_error.dart';
import 'package:github_repo_app/modules/foundation/utils/exception_handler.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: GithubRepoRepository)
class GithubRepoRepositoryImpl extends GithubRepoRepository {
  final RepoApiClient apiClient;

  GithubRepoRepositoryImpl(this.apiClient);

  @override
  Future<Either<AppError, List<RepositoryData>>> getReposByName(
          String name) async =>
      ExceptionHandler.runWithErrorsHandling(() async {
        final response = await apiClient.getRepositoryByName(name);
        return response.items;
      });
}
