// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'issue.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

IssuesList _$IssuesListFromJson(Map<String, dynamic> json) {
  return _IssuesList.fromJson(json);
}

/// @nodoc
mixin _$IssuesList {
  List<Issue> get items => throw _privateConstructorUsedError;

  /// Serializes this IssuesList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of IssuesList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IssuesListCopyWith<IssuesList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IssuesListCopyWith<$Res> {
  factory $IssuesListCopyWith(
          IssuesList value, $Res Function(IssuesList) then) =
      _$IssuesListCopyWithImpl<$Res, IssuesList>;
  @useResult
  $Res call({List<Issue> items});
}

/// @nodoc
class _$IssuesListCopyWithImpl<$Res, $Val extends IssuesList>
    implements $IssuesListCopyWith<$Res> {
  _$IssuesListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IssuesList
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
              as List<Issue>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IssuesListImplCopyWith<$Res>
    implements $IssuesListCopyWith<$Res> {
  factory _$$IssuesListImplCopyWith(
          _$IssuesListImpl value, $Res Function(_$IssuesListImpl) then) =
      __$$IssuesListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Issue> items});
}

/// @nodoc
class __$$IssuesListImplCopyWithImpl<$Res>
    extends _$IssuesListCopyWithImpl<$Res, _$IssuesListImpl>
    implements _$$IssuesListImplCopyWith<$Res> {
  __$$IssuesListImplCopyWithImpl(
      _$IssuesListImpl _value, $Res Function(_$IssuesListImpl) _then)
      : super(_value, _then);

  /// Create a copy of IssuesList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$IssuesListImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Issue>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IssuesListImpl implements _IssuesList {
  const _$IssuesListImpl({final List<Issue> items = const []}) : _items = items;

  factory _$IssuesListImpl.fromJson(Map<String, dynamic> json) =>
      _$$IssuesListImplFromJson(json);

  final List<Issue> _items;
  @override
  @JsonKey()
  List<Issue> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'IssuesList(items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IssuesListImpl &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  /// Create a copy of IssuesList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IssuesListImplCopyWith<_$IssuesListImpl> get copyWith =>
      __$$IssuesListImplCopyWithImpl<_$IssuesListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IssuesListImplToJson(
      this,
    );
  }
}

abstract class _IssuesList implements IssuesList {
  const factory _IssuesList({final List<Issue> items}) = _$IssuesListImpl;

  factory _IssuesList.fromJson(Map<String, dynamic> json) =
      _$IssuesListImpl.fromJson;

  @override
  List<Issue> get items;

  /// Create a copy of IssuesList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IssuesListImplCopyWith<_$IssuesListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Issue _$IssueFromJson(Map<String, dynamic> json) {
  return _Issue.fromJson(json);
}

/// @nodoc
mixin _$Issue {
  int get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;

  /// Serializes this Issue to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Issue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IssueCopyWith<Issue> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IssueCopyWith<$Res> {
  factory $IssueCopyWith(Issue value, $Res Function(Issue) then) =
      _$IssueCopyWithImpl<$Res, Issue>;
  @useResult
  $Res call({int id, String? title});
}

/// @nodoc
class _$IssueCopyWithImpl<$Res, $Val extends Issue>
    implements $IssueCopyWith<$Res> {
  _$IssueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Issue
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
abstract class _$$IssueImplCopyWith<$Res> implements $IssueCopyWith<$Res> {
  factory _$$IssueImplCopyWith(
          _$IssueImpl value, $Res Function(_$IssueImpl) then) =
      __$$IssueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String? title});
}

/// @nodoc
class __$$IssueImplCopyWithImpl<$Res>
    extends _$IssueCopyWithImpl<$Res, _$IssueImpl>
    implements _$$IssueImplCopyWith<$Res> {
  __$$IssueImplCopyWithImpl(
      _$IssueImpl _value, $Res Function(_$IssueImpl) _then)
      : super(_value, _then);

  /// Create a copy of Issue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
  }) {
    return _then(_$IssueImpl(
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
class _$IssueImpl implements _Issue {
  const _$IssueImpl({this.id = 0, this.title = ''});

  factory _$IssueImpl.fromJson(Map<String, dynamic> json) =>
      _$$IssueImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String? title;

  @override
  String toString() {
    return 'Issue(id: $id, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IssueImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title);

  /// Create a copy of Issue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IssueImplCopyWith<_$IssueImpl> get copyWith =>
      __$$IssueImplCopyWithImpl<_$IssueImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IssueImplToJson(
      this,
    );
  }
}

abstract class _Issue implements Issue {
  const factory _Issue({final int id, final String? title}) = _$IssueImpl;

  factory _Issue.fromJson(Map<String, dynamic> json) = _$IssueImpl.fromJson;

  @override
  int get id;
  @override
  String? get title;

  /// Create a copy of Issue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IssueImplCopyWith<_$IssueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
