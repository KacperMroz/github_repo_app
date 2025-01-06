// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pull_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PullRequestsListImpl _$$PullRequestsListImplFromJson(
        Map<String, dynamic> json) =>
    _$PullRequestsListImpl(
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => PullRequest.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$PullRequestsListImplToJson(
        _$PullRequestsListImpl instance) =>
    <String, dynamic>{
      'items': instance.items,
    };

_$PullRequestImpl _$$PullRequestImplFromJson(Map<String, dynamic> json) =>
    _$PullRequestImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      title: json['title'] as String? ?? '',
    );

Map<String, dynamic> _$$PullRequestImplToJson(_$PullRequestImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
    };
