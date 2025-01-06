import 'package:freezed_annotation/freezed_annotation.dart';

part 'pull_request.freezed.dart';
part 'pull_request.g.dart';

@freezed
class PullRequestsList with _$PullRequestsList{
  const factory PullRequestsList({
    @Default([]) List<PullRequest> items,
  }) = _PullRequestsList;

  factory PullRequestsList.fromJson(Map<String, dynamic> json) => _$PullRequestsListFromJson(json);
}

@freezed
class PullRequest with _$PullRequest{
  const factory PullRequest({
    @Default(0) int id,
    @Default('') String? title,
  }) = _PullRequest;

  factory PullRequest.fromJson(Map<String, dynamic> json) => _$PullRequestFromJson(json);
}