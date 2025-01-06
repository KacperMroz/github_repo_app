import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_error.freezed.dart';

@freezed
class AppError with _$AppError implements Exception {
  const AppError._();

  factory AppError.server({
    @Default('') String message,
  }) = ServerAppError;

  const factory AppError.unknown([dynamic error, StackTrace? st]) =
      UnknownAppError;
}
