// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'issue.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IssuesListImpl _$$IssuesListImplFromJson(Map<String, dynamic> json) =>
    _$IssuesListImpl(
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => Issue.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$IssuesListImplToJson(_$IssuesListImpl instance) =>
    <String, dynamic>{
      'items': instance.items,
    };

_$IssueImpl _$$IssueImplFromJson(Map<String, dynamic> json) => _$IssueImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      title: json['title'] as String? ?? '',
    );

Map<String, dynamic> _$$IssueImplToJson(_$IssueImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
    };
