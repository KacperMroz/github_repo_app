import 'package:freezed_annotation/freezed_annotation.dart';

part 'repository.freezed.dart';
part 'repository.g.dart';

@freezed
class Repository with _$Repository {
  const factory Repository({
    @Default(0) int count,
    @Default([]) List<RepositoryData> items,
  }) = _Repository;

  factory Repository.fromJson(Map<String, dynamic> json) =>
      _$RepositoryFromJson(json);
}

@freezed
class RepositoryData with _$RepositoryData {
  const factory RepositoryData({
    @Default(0) int id,
    @Default('') String name,
    @Default('') String fullName,
    @Default('') String description,
    @Default('') String language,
    @Default(0) int watchersCount,
    RepositoryOwner? owner,
  }) = _RepositoryData;

  factory RepositoryData.fromJson(Map<String, dynamic> json) =>
      _$RepositoryDataFromJson(json);
}

@freezed
class RepositoryOwner with _$RepositoryOwner {
  const factory RepositoryOwner({
    @Default(0) int id,
    @Default('') String login,
  }) = _RepositoryOwner;

  factory RepositoryOwner.fromJson(Map<String, dynamic> json) =>
      _$RepositoryOwnerFromJson(json);
}
