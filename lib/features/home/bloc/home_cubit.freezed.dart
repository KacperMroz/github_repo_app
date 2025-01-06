// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeState {
  bool get isLoading => throw _privateConstructorUsedError;
  Repository? get repository => throw _privateConstructorUsedError;
  AppError? get error => throw _privateConstructorUsedError;
  String? get searcherQuery => throw _privateConstructorUsedError;
  IssuesList? get issues => throw _privateConstructorUsedError;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {bool isLoading,
      Repository? repository,
      AppError? error,
      String? searcherQuery,
      IssuesList? issues});

  $RepositoryCopyWith<$Res>? get repository;
  $AppErrorCopyWith<$Res>? get error;
  $IssuesListCopyWith<$Res>? get issues;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? repository = freezed,
    Object? error = freezed,
    Object? searcherQuery = freezed,
    Object? issues = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      repository: freezed == repository
          ? _value.repository
          : repository // ignore: cast_nullable_to_non_nullable
              as Repository?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AppError?,
      searcherQuery: freezed == searcherQuery
          ? _value.searcherQuery
          : searcherQuery // ignore: cast_nullable_to_non_nullable
              as String?,
      issues: freezed == issues
          ? _value.issues
          : issues // ignore: cast_nullable_to_non_nullable
              as IssuesList?,
    ) as $Val);
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RepositoryCopyWith<$Res>? get repository {
    if (_value.repository == null) {
      return null;
    }

    return $RepositoryCopyWith<$Res>(_value.repository!, (value) {
      return _then(_value.copyWith(repository: value) as $Val);
    });
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppErrorCopyWith<$Res>? get error {
    if (_value.error == null) {
      return null;
    }

    return $AppErrorCopyWith<$Res>(_value.error!, (value) {
      return _then(_value.copyWith(error: value) as $Val);
    });
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IssuesListCopyWith<$Res>? get issues {
    if (_value.issues == null) {
      return null;
    }

    return $IssuesListCopyWith<$Res>(_value.issues!, (value) {
      return _then(_value.copyWith(issues: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      Repository? repository,
      AppError? error,
      String? searcherQuery,
      IssuesList? issues});

  @override
  $RepositoryCopyWith<$Res>? get repository;
  @override
  $AppErrorCopyWith<$Res>? get error;
  @override
  $IssuesListCopyWith<$Res>? get issues;
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? repository = freezed,
    Object? error = freezed,
    Object? searcherQuery = freezed,
    Object? issues = freezed,
  }) {
    return _then(_$HomeStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      repository: freezed == repository
          ? _value.repository
          : repository // ignore: cast_nullable_to_non_nullable
              as Repository?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AppError?,
      searcherQuery: freezed == searcherQuery
          ? _value.searcherQuery
          : searcherQuery // ignore: cast_nullable_to_non_nullable
              as String?,
      issues: freezed == issues
          ? _value.issues
          : issues // ignore: cast_nullable_to_non_nullable
              as IssuesList?,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl extends _HomeState {
  const _$HomeStateImpl(
      {this.isLoading = false,
      this.repository,
      this.error,
      this.searcherQuery,
      this.issues})
      : super._();

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final Repository? repository;
  @override
  final AppError? error;
  @override
  final String? searcherQuery;
  @override
  final IssuesList? issues;

  @override
  String toString() {
    return 'HomeState(isLoading: $isLoading, repository: $repository, error: $error, searcherQuery: $searcherQuery, issues: $issues)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.repository, repository) ||
                other.repository == repository) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.searcherQuery, searcherQuery) ||
                other.searcherQuery == searcherQuery) &&
            (identical(other.issues, issues) || other.issues == issues));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, repository, error, searcherQuery, issues);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState extends HomeState {
  const factory _HomeState(
      {final bool isLoading,
      final Repository? repository,
      final AppError? error,
      final String? searcherQuery,
      final IssuesList? issues}) = _$HomeStateImpl;
  const _HomeState._() : super._();

  @override
  bool get isLoading;
  @override
  Repository? get repository;
  @override
  AppError? get error;
  @override
  String? get searcherQuery;
  @override
  IssuesList? get issues;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
