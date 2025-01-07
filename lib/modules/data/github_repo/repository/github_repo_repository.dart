import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:github_repo_app/modules/domain/github_repo/model/repository.dart';
import 'package:github_repo_app/modules/domain/github_repo/repository/github_repo_repository.dart';
import 'package:github_repo_app/modules/foundation/errors/app_error.dart';
import 'package:github_repo_app/modules/foundation/utils/exception_handler.dart';
import 'package:github_repo_app/services/api_client.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: GithubRepoRepository)
class GithubRepoRepositoryImpl extends GithubRepoRepository {
  final ApiClient apiClient;

  GithubRepoRepositoryImpl(this.apiClient);

  @override
  Future<Either<AppError, Repository>> getReposByName(String name) async {
    return ExceptionHandler.runWithErrorsHandling(() async {
      final Response response = await apiClient.get(
          '/search/repositories?q=$name&sort=stars&order=desc');
      return Repository.fromJson(response.data);
    });
  }
}
