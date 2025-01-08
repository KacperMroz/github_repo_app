import 'package:dartz/dartz.dart';

abstract class UseCase<T, E> {
  Future<Either<T, E>> call();
}

abstract class ParamUseCase<T, E, U> {
  Future<Either<T, E>> call({required U param});
}
