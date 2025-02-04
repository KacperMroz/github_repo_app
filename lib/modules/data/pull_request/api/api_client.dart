import 'package:dio/dio.dart';
import 'package:github_repo_app/modules/data/pull_request/request/request.dart';
import 'package:github_repo_app/modules/domain/pull_request/model/pull_request.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'api_client.g.dart';

@RestApi()
abstract class PullRequestApiClient {
  @factoryMethod
  factory PullRequestApiClient(Dio dio) = _PullRequestApiClient;

  @GET(PullRequestPath.getPullRequestsForRepo)
  Future<List<PullRequest>> getPullRequestsForRepo(
    @Path('owner') String owner,
    @Path('repoName') String repoName,
  );
}
