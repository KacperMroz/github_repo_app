import 'package:dartz/dartz.dart';

abstract class UseCase<T, E> {
  Future<Either<T, E>> call();
}

abstract class ParamUseCase<T, E> {
  Future<Either<T, E>> call({required param, required param2});
}

abstract class OneParamUseCase<T, E, U> {
  Future<Either<T, E>> call({required String param});
}
