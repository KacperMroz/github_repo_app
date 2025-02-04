import 'package:dio/dio.dart';
import 'package:github_repo_app/modules/data/github_repo/request/request.dart';
import 'package:github_repo_app/modules/domain/github_repo/model/repository.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'api_client.g.dart';

@RestApi()
abstract class RepoApiClient {
  @factoryMethod
  factory RepoApiClient(Dio dio) = _RepoApiClient;

  @GET(RepositoryPath.getRepositoriesByName)
  Future<Repository> getRepositoryByName(
    @Path('name') String name,
  );
}
