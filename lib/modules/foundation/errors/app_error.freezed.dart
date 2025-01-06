// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppError {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) server,
    required TResult Function(dynamic error, StackTrace? st) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? server,
    TResult? Function(dynamic error, StackTrace? st)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? server,
    TResult Function(dynamic error, StackTrace? st)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerAppError value) server,
    required TResult Function(UnknownAppError value) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerAppError value)? server,
    TResult? Function(UnknownAppError value)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerAppError value)? server,
    TResult Function(UnknownAppError value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppErrorCopyWith<$Res> {
  factory $AppErrorCopyWith(AppError value, $Res Function(AppError) then) =
      _$AppErrorCopyWithImpl<$Res, AppError>;
}

/// @nodoc
class _$AppErrorCopyWithImpl<$Res, $Val extends AppError>
    implements $AppErrorCopyWith<$Res> {
  _$AppErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppError
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ServerAppErrorImplCopyWith<$Res> {
  factory _$$ServerAppErrorImplCopyWith(_$ServerAppErrorImpl value,
          $Res Function(_$ServerAppErrorImpl) then) =
      __$$ServerAppErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ServerAppErrorImplCopyWithImpl<$Res>
    extends _$AppErrorCopyWithImpl<$Res, _$ServerAppErrorImpl>
    implements _$$ServerAppErrorImplCopyWith<$Res> {
  __$$ServerAppErrorImplCopyWithImpl(
      _$ServerAppErrorImpl _value, $Res Function(_$ServerAppErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ServerAppErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ServerAppErrorImpl extends ServerAppError {
  _$ServerAppErrorImpl({this.message = ''}) : super._();

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'AppError.server(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerAppErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of AppError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerAppErrorImplCopyWith<_$ServerAppErrorImpl> get copyWith =>
      __$$ServerAppErrorImplCopyWithImpl<_$ServerAppErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) server,
    required TResult Function(dynamic error, StackTrace? st) unknown,
  }) {
    return server(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? server,
    TResult? Function(dynamic error, StackTrace? st)? unknown,
  }) {
    return server?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? server,
    TResult Function(dynamic error, StackTrace? st)? unknown,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerAppError value) server,
    required TResult Function(UnknownAppError value) unknown,
  }) {
    return server(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerAppError value)? server,
    TResult? Function(UnknownAppError value)? unknown,
  }) {
    return server?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerAppError value)? server,
    TResult Function(UnknownAppError value)? unknown,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(this);
    }
    return orElse();
  }
}

abstract class ServerAppError extends AppError {
  factory ServerAppError({final String message}) = _$ServerAppErrorImpl;
  ServerAppError._() : super._();

  String get message;

  /// Create a copy of AppError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServerAppErrorImplCopyWith<_$ServerAppErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnknownAppErrorImplCopyWith<$Res> {
  factory _$$UnknownAppErrorImplCopyWith(_$UnknownAppErrorImpl value,
          $Res Function(_$UnknownAppErrorImpl) then) =
      __$$UnknownAppErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic error, StackTrace? st});
}

/// @nodoc
class __$$UnknownAppErrorImplCopyWithImpl<$Res>
    extends _$AppErrorCopyWithImpl<$Res, _$UnknownAppErrorImpl>
    implements _$$UnknownAppErrorImplCopyWith<$Res> {
  __$$UnknownAppErrorImplCopyWithImpl(
      _$UnknownAppErrorImpl _value, $Res Function(_$UnknownAppErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? st = freezed,
  }) {
    return _then(_$UnknownAppErrorImpl(
      freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
      freezed == st
          ? _value.st
          : st // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$UnknownAppErrorImpl extends UnknownAppError {
  const _$UnknownAppErrorImpl([this.error, this.st]) : super._();

  @override
  final dynamic error;
  @override
  final StackTrace? st;

  @override
  String toString() {
    return 'AppError.unknown(error: $error, st: $st)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnknownAppErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.st, st) || other.st == st));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error), st);

  /// Create a copy of AppError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnknownAppErrorImplCopyWith<_$UnknownAppErrorImpl> get copyWith =>
      __$$UnknownAppErrorImplCopyWithImpl<_$UnknownAppErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) server,
    required TResult Function(dynamic error, StackTrace? st) unknown,
  }) {
    return unknown(error, st);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? server,
    TResult? Function(dynamic error, StackTrace? st)? unknown,
  }) {
    return unknown?.call(error, st);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? server,
    TResult Function(dynamic error, StackTrace? st)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(error, st);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerAppError value) server,
    required TResult Function(UnknownAppError value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerAppError value)? server,
    TResult? Function(UnknownAppError value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerAppError value)? server,
    TResult Function(UnknownAppError value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class UnknownAppError extends AppError {
  const factory UnknownAppError([final dynamic error, final StackTrace? st]) =
      _$UnknownAppErrorImpl;
  const UnknownAppError._() : super._();

  dynamic get error;
  StackTrace? get st;

  /// Create a copy of AppError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnknownAppErrorImplCopyWith<_$UnknownAppErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
