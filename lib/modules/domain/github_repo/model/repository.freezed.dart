// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'repository.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Repository _$RepositoryFromJson(Map<String, dynamic> json) {
  return _Repository.fromJson(json);
}

/// @nodoc
mixin _$Repository {
  int get count => throw _privateConstructorUsedError;
  List<RepositoryData> get items => throw _privateConstructorUsedError;

  /// Serializes this Repository to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Repository
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RepositoryCopyWith<Repository> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepositoryCopyWith<$Res> {
  factory $RepositoryCopyWith(
          Repository value, $Res Function(Repository) then) =
      _$RepositoryCopyWithImpl<$Res, Repository>;
  @useResult
  $Res call({int count, List<RepositoryData> items});
}

/// @nodoc
class _$RepositoryCopyWithImpl<$Res, $Val extends Repository>
    implements $RepositoryCopyWith<$Res> {
  _$RepositoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Repository
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<RepositoryData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RepositoryImplCopyWith<$Res>
    implements $RepositoryCopyWith<$Res> {
  factory _$$RepositoryImplCopyWith(
          _$RepositoryImpl value, $Res Function(_$RepositoryImpl) then) =
      __$$RepositoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count, List<RepositoryData> items});
}

/// @nodoc
class __$$RepositoryImplCopyWithImpl<$Res>
    extends _$RepositoryCopyWithImpl<$Res, _$RepositoryImpl>
    implements _$$RepositoryImplCopyWith<$Res> {
  __$$RepositoryImplCopyWithImpl(
      _$RepositoryImpl _value, $Res Function(_$RepositoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of Repository
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? items = null,
  }) {
    return _then(_$RepositoryImpl(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<RepositoryData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RepositoryImpl implements _Repository {
  const _$RepositoryImpl(
      {this.count = 0, final List<RepositoryData> items = const []})
      : _items = items;

  factory _$RepositoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$RepositoryImplFromJson(json);

  @override
  @JsonKey()
  final int count;
  final List<RepositoryData> _items;
  @override
  @JsonKey()
  List<RepositoryData> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'Repository(count: $count, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RepositoryImpl &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, count, const DeepCollectionEquality().hash(_items));

  /// Create a copy of Repository
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RepositoryImplCopyWith<_$RepositoryImpl> get copyWith =>
      __$$RepositoryImplCopyWithImpl<_$RepositoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RepositoryImplToJson(
      this,
    );
  }
}

abstract class _Repository implements Repository {
  const factory _Repository(
      {final int count, final List<RepositoryData> items}) = _$RepositoryImpl;

  factory _Repository.fromJson(Map<String, dynamic> json) =
      _$RepositoryImpl.fromJson;

  @override
  int get count;
  @override
  List<RepositoryData> get items;

  /// Create a copy of Repository
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RepositoryImplCopyWith<_$RepositoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RepositoryData _$RepositoryDataFromJson(Map<String, dynamic> json) {
  return _RepositoryData.fromJson(json);
}

/// @nodoc
mixin _$RepositoryData {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  int get watchersCount => throw _privateConstructorUsedError;
  RepositoryOwner? get owner => throw _privateConstructorUsedError;

  /// Serializes this RepositoryData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RepositoryData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RepositoryDataCopyWith<RepositoryData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepositoryDataCopyWith<$Res> {
  factory $RepositoryDataCopyWith(
          RepositoryData value, $Res Function(RepositoryData) then) =
      _$RepositoryDataCopyWithImpl<$Res, RepositoryData>;
  @useResult
  $Res call(
      {int id,
      String name,
      String fullName,
      String description,
      String language,
      int watchersCount,
      RepositoryOwner? owner});

  $RepositoryOwnerCopyWith<$Res>? get owner;
}

/// @nodoc
class _$RepositoryDataCopyWithImpl<$Res, $Val extends RepositoryData>
    implements $RepositoryDataCopyWith<$Res> {
  _$RepositoryDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RepositoryData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? fullName = null,
    Object? description = null,
    Object? language = null,
    Object? watchersCount = null,
    Object? owner = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      watchersCount: null == watchersCount
          ? _value.watchersCount
          : watchersCount // ignore: cast_nullable_to_non_nullable
              as int,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as RepositoryOwner?,
    ) as $Val);
  }

  /// Create a copy of RepositoryData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RepositoryOwnerCopyWith<$Res>? get owner {
    if (_value.owner == null) {
      return null;
    }

    return $RepositoryOwnerCopyWith<$Res>(_value.owner!, (value) {
      return _then(_value.copyWith(owner: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RepositoryDataImplCopyWith<$Res>
    implements $RepositoryDataCopyWith<$Res> {
  factory _$$RepositoryDataImplCopyWith(_$RepositoryDataImpl value,
          $Res Function(_$RepositoryDataImpl) then) =
      __$$RepositoryDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String fullName,
      String description,
      String language,
      int watchersCount,
      RepositoryOwner? owner});

  @override
  $RepositoryOwnerCopyWith<$Res>? get owner;
}

/// @nodoc
class __$$RepositoryDataImplCopyWithImpl<$Res>
    extends _$RepositoryDataCopyWithImpl<$Res, _$RepositoryDataImpl>
    implements _$$RepositoryDataImplCopyWith<$Res> {
  __$$RepositoryDataImplCopyWithImpl(
      _$RepositoryDataImpl _value, $Res Function(_$RepositoryDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of RepositoryData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? fullName = null,
    Object? description = null,
    Object? language = null,
    Object? watchersCount = null,
    Object? owner = freezed,
  }) {
    return _then(_$RepositoryDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      watchersCount: null == watchersCount
          ? _value.watchersCount
          : watchersCount // ignore: cast_nullable_to_non_nullable
              as int,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as RepositoryOwner?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RepositoryDataImpl implements _RepositoryData {
  const _$RepositoryDataImpl(
      {this.id = 0,
      this.name = '',
      this.fullName = '',
      this.description = '',
      this.language = '',
      this.watchersCount = 0,
      this.owner});

  factory _$RepositoryDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$RepositoryDataImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String fullName;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final String language;
  @override
  @JsonKey()
  final int watchersCount;
  @override
  final RepositoryOwner? owner;

  @override
  String toString() {
    return 'RepositoryData(id: $id, name: $name, fullName: $fullName, description: $description, language: $language, watchersCount: $watchersCount, owner: $owner)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RepositoryDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.watchersCount, watchersCount) ||
                other.watchersCount == watchersCount) &&
            (identical(other.owner, owner) || other.owner == owner));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, fullName, description,
      language, watchersCount, owner);

  /// Create a copy of RepositoryData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RepositoryDataImplCopyWith<_$RepositoryDataImpl> get copyWith =>
      __$$RepositoryDataImplCopyWithImpl<_$RepositoryDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RepositoryDataImplToJson(
      this,
    );
  }
}

abstract class _RepositoryData implements RepositoryData {
  const factory _RepositoryData(
      {final int id,
      final String name,
      final String fullName,
      final String description,
      final String language,
      final int watchersCount,
      final RepositoryOwner? owner}) = _$RepositoryDataImpl;

  factory _RepositoryData.fromJson(Map<String, dynamic> json) =
      _$RepositoryDataImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get fullName;
  @override
  String get description;
  @override
  String get language;
  @override
  int get watchersCount;
  @override
  RepositoryOwner? get owner;

  /// Create a copy of RepositoryData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RepositoryDataImplCopyWith<_$RepositoryDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RepositoryOwner _$RepositoryOwnerFromJson(Map<String, dynamic> json) {
  return _RepositoryOwner.fromJson(json);
}

/// @nodoc
mixin _$RepositoryOwner {
  int get id => throw _privateConstructorUsedError;
  String get login => throw _privateConstructorUsedError;

  /// Serializes this RepositoryOwner to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RepositoryOwner
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RepositoryOwnerCopyWith<RepositoryOwner> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepositoryOwnerCopyWith<$Res> {
  factory $RepositoryOwnerCopyWith(
          RepositoryOwner value, $Res Function(RepositoryOwner) then) =
      _$RepositoryOwnerCopyWithImpl<$Res, RepositoryOwner>;
  @useResult
  $Res call({int id, String login});
}

/// @nodoc
class _$RepositoryOwnerCopyWithImpl<$Res, $Val extends RepositoryOwner>
    implements $RepositoryOwnerCopyWith<$Res> {
  _$RepositoryOwnerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RepositoryOwner
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? login = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RepositoryOwnerImplCopyWith<$Res>
    implements $RepositoryOwnerCopyWith<$Res> {
  factory _$$RepositoryOwnerImplCopyWith(_$RepositoryOwnerImpl value,
          $Res Function(_$RepositoryOwnerImpl) then) =
      __$$RepositoryOwnerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String login});
}

/// @nodoc
class __$$RepositoryOwnerImplCopyWithImpl<$Res>
    extends _$RepositoryOwnerCopyWithImpl<$Res, _$RepositoryOwnerImpl>
    implements _$$RepositoryOwnerImplCopyWith<$Res> {
  __$$RepositoryOwnerImplCopyWithImpl(
      _$RepositoryOwnerImpl _value, $Res Function(_$RepositoryOwnerImpl) _then)
      : super(_value, _then);

  /// Create a copy of RepositoryOwner
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? login = null,
  }) {
    return _then(_$RepositoryOwnerImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RepositoryOwnerImpl implements _RepositoryOwner {
  const _$RepositoryOwnerImpl({this.id = 0, this.login = ''});

  factory _$RepositoryOwnerImpl.fromJson(Map<String, dynamic> json) =>
      _$$RepositoryOwnerImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String login;

  @override
  String toString() {
    return 'RepositoryOwner(id: $id, login: $login)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RepositoryOwnerImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.login, login) || other.login == login));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, login);

  /// Create a copy of RepositoryOwner
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RepositoryOwnerImplCopyWith<_$RepositoryOwnerImpl> get copyWith =>
      __$$RepositoryOwnerImplCopyWithImpl<_$RepositoryOwnerImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RepositoryOwnerImplToJson(
      this,
    );
  }
}

abstract class _RepositoryOwner implements RepositoryOwner {
  const factory _RepositoryOwner({final int id, final String login}) =
      _$RepositoryOwnerImpl;

  factory _RepositoryOwner.fromJson(Map<String, dynamic> json) =
      _$RepositoryOwnerImpl.fromJson;

  @override
  int get id;
  @override
  String get login;

  /// Create a copy of RepositoryOwner
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RepositoryOwnerImplCopyWith<_$RepositoryOwnerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
