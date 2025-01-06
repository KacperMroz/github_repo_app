import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:github_repo_app/modules/foundation/core/logger.dart';
import 'package:github_repo_app/modules/foundation/errors/app_error.dart';

abstract class ExceptionHandler {
  static Future<Either<AppError, T>> runWithErrorsHandling<T>(
    FutureOr<T> Function() tryBlock,
  ) async {
    try {
      logger.d('ExceptionHandler: Rozpoczynam wykonywanie funkcji');
      final result = await tryBlock();
      logger.d('ExceptionHandler: Funkcja wykonana pomyślnie');
      return right(result);
    } catch (error) {
      logger.e(
        'ExceptionHandler: Złapano wyjątek : $error',
      );
      if (error is AppError) {
        logger.e('ExceptionHandler: AppError $error');
        return left(error);
      }
      logger.e(
        'ExceptionHandler: Nieznany błąd $error',
      );
      return left(AppError.unknown(error));
    }
  }
}
