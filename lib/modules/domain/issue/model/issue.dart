import 'package:freezed_annotation/freezed_annotation.dart';

part 'issue.freezed.dart';
part 'issue.g.dart';

@freezed
class IssuesList with _$IssuesList {
  const factory IssuesList({
    @Default([]) List<Issue> items,
  }) = _IssuesList;

  factory IssuesList.fromJson(Map<String, dynamic> json) =>
      _$IssuesListFromJson(json);
}

@freezed
class Issue with _$Issue {
  const factory Issue({
    @Default(0) int id,
    @Default('') String? title,
  }) = _Issue;

  factory Issue.fromJson(Map<String, dynamic> json) => _$IssueFromJson(json);
}
