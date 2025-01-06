// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pull_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PullRequestsList _$PullRequestsListFromJson(Map<String, dynamic> json) {
  return _PullRequestsList.fromJson(json);
}

/// @nodoc
mixin _$PullRequestsList {
  List<PullRequest> get items => throw _privateConstructorUsedError;

  /// Serializes this PullRequestsList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PullRequestsList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PullRequestsListCopyWith<PullRequestsList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PullRequestsListCopyWith<$Res> {
  factory $PullRequestsListCopyWith(
          PullRequestsList value, $Res Function(PullRequestsList) then) =
      _$PullRequestsListCopyWithImpl<$Res, PullRequestsList>;
  @useResult
  $Res call({List<PullRequest> items});
}

/// @nodoc
class _$PullRequestsListCopyWithImpl<$Res, $Val extends PullRequestsList>
    implements $PullRequestsListCopyWith<$Res> {
  _$PullRequestsListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PullRequestsList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<PullRequest>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PullRequestsListImplCopyWith<$Res>
    implements $PullRequestsListCopyWith<$Res> {
  factory _$$PullRequestsListImplCopyWith(_$PullRequestsListImpl value,
          $Res Function(_$PullRequestsListImpl) then) =
      __$$PullRequestsListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PullRequest> items});
}

/// @nodoc
class __$$PullRequestsListImplCopyWithImpl<$Res>
    extends _$PullRequestsListCopyWithImpl<$Res, _$PullRequestsListImpl>
    implements _$$PullRequestsListImplCopyWith<$Res> {
  __$$PullRequestsListImplCopyWithImpl(_$PullRequestsListImpl _value,
      $Res Function(_$PullRequestsListImpl) _then)
      : super(_value, _then);

  /// Create a copy of PullRequestsList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$PullRequestsListImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<PullRequest>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PullRequestsListImpl implements _PullRequestsList {
  const _$PullRequestsListImpl({final List<PullRequest> items = const []})
      : _items = items;

  factory _$PullRequestsListImpl.fromJson(Map<String, dynamic> json) =>
      _$$PullRequestsListImplFromJson(json);

  final List<PullRequest> _items;
  @override
  @JsonKey()
  List<PullRequest> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'PullRequestsList(items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PullRequestsListImpl &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  /// Create a copy of PullRequestsList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PullRequestsListImplCopyWith<_$PullRequestsListImpl> get copyWith =>
      __$$PullRequestsListImplCopyWithImpl<_$PullRequestsListImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PullRequestsListImplToJson(
      this,
    );
  }
}

abstract class _PullRequestsList implements PullRequestsList {
  const factory _PullRequestsList({final List<PullRequest> items}) =
      _$PullRequestsListImpl;

  factory _PullRequestsList.fromJson(Map<String, dynamic> json) =
      _$PullRequestsListImpl.fromJson;

  @override
  List<PullRequest> get items;

  /// Create a copy of PullRequestsList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PullRequestsListImplCopyWith<_$PullRequestsListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PullRequest _$PullRequestFromJson(Map<String, dynamic> json) {
  return _PullRequest.fromJson(json);
}

/// @nodoc
mixin _$PullRequest {
  int get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;

  /// Serializes this PullRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PullRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PullRequestCopyWith<PullRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PullRequestCopyWith<$Res> {
  factory $PullRequestCopyWith(
          PullRequest value, $Res Function(PullRequest) then) =
      _$PullRequestCopyWithImpl<$Res, PullRequest>;
  @useResult
  $Res call({int id, String? title});
}

/// @nodoc
class _$PullRequestCopyWithImpl<$Res, $Val extends PullRequest>
    implements $PullRequestCopyWith<$Res> {
  _$PullRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PullRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PullRequestImplCopyWith<$Res>
    implements $PullRequestCopyWith<$Res> {
  factory _$$PullRequestImplCopyWith(
          _$PullRequestImpl value, $Res Function(_$PullRequestImpl) then) =
      __$$PullRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String? title});
}

/// @nodoc
class __$$PullRequestImplCopyWithImpl<$Res>
    extends _$PullRequestCopyWithImpl<$Res, _$PullRequestImpl>
    implements _$$PullRequestImplCopyWith<$Res> {
  __$$PullRequestImplCopyWithImpl(
      _$PullRequestImpl _value, $Res Function(_$PullRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of PullRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
  }) {
    return _then(_$PullRequestImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PullRequestImpl implements _PullRequest {
  const _$PullRequestImpl({this.id = 0, this.title = ''});

  factory _$PullRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$PullRequestImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String? title;

  @override
  String toString() {
    return 'PullRequest(id: $id, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PullRequestImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title);

  /// Create a copy of PullRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PullRequestImplCopyWith<_$PullRequestImpl> get copyWith =>
      __$$PullRequestImplCopyWithImpl<_$PullRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PullRequestImplToJson(
      this,
    );
  }
}

abstract class _PullRequest implements PullRequest {
  const factory _PullRequest({final int id, final String? title}) =
      _$PullRequestImpl;

  factory _PullRequest.fromJson(Map<String, dynamic> json) =
      _$PullRequestImpl.fromJson;

  @override
  int get id;
  @override
  String? get title;

  /// Create a copy of PullRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PullRequestImplCopyWith<_$PullRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
