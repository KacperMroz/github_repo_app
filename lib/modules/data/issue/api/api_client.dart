import 'package:dio/dio.dart';
import 'package:github_repo_app/modules/data/issue/request/request.dart';
import 'package:github_repo_app/modules/domain/issue/model/issue.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'api_client.g.dart';

@RestApi()
abstract class IssueApiClient {
  @factoryMethod
  factory IssueApiClient(Dio dio) = _IssueApiClient;

  @GET(IssuePath.getIssuesForRepo)
  Future<List<Issue>> getIssuesForRepo(
    @Path('owner') String owner,
    @Path('repoName') String repoName,
  );
}
