// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pull_request_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PullRequestState {
  bool get isLoading => throw _privateConstructorUsedError;
  PullRequestsList? get pullRequests => throw _privateConstructorUsedError;
  AppError? get error => throw _privateConstructorUsedError;

  /// Create a copy of PullRequestState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PullRequestStateCopyWith<PullRequestState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PullRequestStateCopyWith<$Res> {
  factory $PullRequestStateCopyWith(
          PullRequestState value, $Res Function(PullRequestState) then) =
      _$PullRequestStateCopyWithImpl<$Res, PullRequestState>;
  @useResult
  $Res call({bool isLoading, PullRequestsList? pullRequests, AppError? error});

  $PullRequestsListCopyWith<$Res>? get pullRequests;
  $AppErrorCopyWith<$Res>? get error;
}

/// @nodoc
class _$PullRequestStateCopyWithImpl<$Res, $Val extends PullRequestState>
    implements $PullRequestStateCopyWith<$Res> {
  _$PullRequestStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PullRequestState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? pullRequests = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      pullRequests: freezed == pullRequests
          ? _value.pullRequests
          : pullRequests // ignore: cast_nullable_to_non_nullable
              as PullRequestsList?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AppError?,
    ) as $Val);
  }

  /// Create a copy of PullRequestState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PullRequestsListCopyWith<$Res>? get pullRequests {
    if (_value.pullRequests == null) {
      return null;
    }

    return $PullRequestsListCopyWith<$Res>(_value.pullRequests!, (value) {
      return _then(_value.copyWith(pullRequests: value) as $Val);
    });
  }

  /// Create a copy of PullRequestState
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
}

/// @nodoc
abstract class _$$PullRequestStateImplCopyWith<$Res>
    implements $PullRequestStateCopyWith<$Res> {
  factory _$$PullRequestStateImplCopyWith(_$PullRequestStateImpl value,
          $Res Function(_$PullRequestStateImpl) then) =
      __$$PullRequestStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, PullRequestsList? pullRequests, AppError? error});

  @override
  $PullRequestsListCopyWith<$Res>? get pullRequests;
  @override
  $AppErrorCopyWith<$Res>? get error;
}

/// @nodoc
class __$$PullRequestStateImplCopyWithImpl<$Res>
    extends _$PullRequestStateCopyWithImpl<$Res, _$PullRequestStateImpl>
    implements _$$PullRequestStateImplCopyWith<$Res> {
  __$$PullRequestStateImplCopyWithImpl(_$PullRequestStateImpl _value,
      $Res Function(_$PullRequestStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PullRequestState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? pullRequests = freezed,
    Object? error = freezed,
  }) {
    return _then(_$PullRequestStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      pullRequests: freezed == pullRequests
          ? _value.pullRequests
          : pullRequests // ignore: cast_nullable_to_non_nullable
              as PullRequestsList?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AppError?,
    ));
  }
}

/// @nodoc

class _$PullRequestStateImpl extends _PullRequestState {
  const _$PullRequestStateImpl(
      {this.isLoading = false, this.pullRequests, this.error})
      : super._();

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final PullRequestsList? pullRequests;
  @override
  final AppError? error;

  @override
  String toString() {
    return 'PullRequestState(isLoading: $isLoading, pullRequests: $pullRequests, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PullRequestStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.pullRequests, pullRequests) ||
                other.pullRequests == pullRequests) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, pullRequests, error);

  /// Create a copy of PullRequestState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PullRequestStateImplCopyWith<_$PullRequestStateImpl> get copyWith =>
      __$$PullRequestStateImplCopyWithImpl<_$PullRequestStateImpl>(
          this, _$identity);
}

abstract class _PullRequestState extends PullRequestState {
  const factory _PullRequestState(
      {final bool isLoading,
      final PullRequestsList? pullRequests,
      final AppError? error}) = _$PullRequestStateImpl;
  const _PullRequestState._() : super._();

  @override
  bool get isLoading;
  @override
  PullRequestsList? get pullRequests;
  @override
  AppError? get error;

  /// Create a copy of PullRequestState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PullRequestStateImplCopyWith<_$PullRequestStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
