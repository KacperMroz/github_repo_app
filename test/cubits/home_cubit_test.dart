import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:github_repo_app/features/home/bloc/home_cubit.dart';
import 'package:github_repo_app/modules/domain/github_repo/model/repository.dart';
import 'package:github_repo_app/modules/domain/github_repo/use_case/get_repos_by_name_use_case.dart';
import 'package:github_repo_app/modules/foundation/errors/app_error.dart';
import 'package:mocktail/mocktail.dart';

class MockGetReposByNameUseCase extends Mock implements GetReposByNameUseCase {}

void main() {
  late MockGetReposByNameUseCase mockGetReposByNameUseCase;

  setUp(() {
    mockGetReposByNameUseCase = MockGetReposByNameUseCase();
  });

  setUpAll(() {
    registerFallbackValue(GetReposByNameParams(name: ''));
  });

  const tRepoName = 'flutter';
  const tRepository = Repository(
    items: [
      RepositoryData(
        id: 1,
        name: 'flutter',
        description: 'A framework by Google',
      ),
    ],
  );
  const tError = AppError.unknown();

  group('HomeCubit', () {
    blocTest<HomeCubit, HomeState>(
      'emits HomeState with repository and searcherQuery when searchRepository is successful',
      build: () {
        when(() => mockGetReposByNameUseCase(param: any(named: 'param')))
            .thenAnswer((_) async => const Right(tRepository));
        return HomeCubit(mockGetReposByNameUseCase);
      },
      act: (cubit) => cubit.searchRepository(tRepoName),
      expect: () => [
        isA<HomeState>().having((state) => state.isLoading, 'isLoading', true),
        isA<HomeState>()
            .having((state) => state.repository, 'repository', tRepository)
            .having((state) => state.searcherQuery, 'searcherQuery', tRepoName)
            .having((state) => state.isLoading, 'isLoading', false),
      ],
    );

    blocTest<HomeCubit, HomeState>(
      'emits HomeState with error when searchRepository fails',
      build: () {
        when(() => mockGetReposByNameUseCase(param: any(named: 'param')))
            .thenAnswer((_) async => const Left(tError));
        return HomeCubit(mockGetReposByNameUseCase);
      },
      act: (cubit) => cubit.searchRepository(tRepoName),
      expect: () => [
        isA<HomeState>().having((state) => state.isLoading, 'isLoading', true),
        isA<HomeState>()
            .having((state) => state.error, 'error', tError)
            .having((state) => state.isLoading, 'isLoading', false),
      ],
    );

    blocTest<HomeCubit, HomeState>(
      'emits HomeState with error when param is empty',
      build: () {
        when(() => mockGetReposByNameUseCase(param: any(named: 'param')))
            .thenAnswer((_) async => const Left(tError));
        return HomeCubit(mockGetReposByNameUseCase);
      },
      act: (cubit) => cubit.searchRepository(''),
      expect: () => [
        isA<HomeState>().having((state) => state.isLoading, 'isLoading', true),
        isA<HomeState>()
            .having((state) => state.error, 'error', tError)
            .having((state) => state.isLoading, 'isLoading', false),
      ],
    );
  });
}
