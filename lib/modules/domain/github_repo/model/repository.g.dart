// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RepositoryImpl _$$RepositoryImplFromJson(Map<String, dynamic> json) =>
    _$RepositoryImpl(
      count: (json['count'] as num?)?.toInt() ?? 0,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => RepositoryData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$RepositoryImplToJson(_$RepositoryImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
      'items': instance.items,
    };

_$RepositoryDataImpl _$$RepositoryDataImplFromJson(Map<String, dynamic> json) =>
    _$RepositoryDataImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? '',
      fullName: json['fullName'] as String? ?? '',
      description: json['description'] as String? ?? '',
      language: json['language'] as String? ?? '',
      watchersCount: (json['watchersCount'] as num?)?.toInt() ?? 0,
      owner: json['owner'] == null
          ? null
          : RepositoryOwner.fromJson(json['owner'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RepositoryDataImplToJson(
        _$RepositoryDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'fullName': instance.fullName,
      'description': instance.description,
      'language': instance.language,
      'watchersCount': instance.watchersCount,
      'owner': instance.owner,
    };

_$RepositoryOwnerImpl _$$RepositoryOwnerImplFromJson(
        Map<String, dynamic> json) =>
    _$RepositoryOwnerImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      login: json['login'] as String? ?? '',
    );

Map<String, dynamic> _$$RepositoryOwnerImplToJson(
        _$RepositoryOwnerImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'login': instance.login,
    };
