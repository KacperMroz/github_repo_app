import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:github_repo_app/modules/domain/github_repo/model/repository.dart';
import 'package:github_repo_app/modules/domain/github_repo/repository/github_repo_repository.dart';
import 'package:github_repo_app/modules/domain/github_repo/use_case/get_repos_by_name_use_case.dart';
import 'package:github_repo_app/modules/foundation/errors/app_error.dart';
import 'package:mocktail/mocktail.dart';

class MockGithubRepoRepository extends Mock implements GithubRepoRepository {}

void main() {
  late GetReposByNameUseCase mockGetReposByNameUseCase;
  late MockGithubRepoRepository mockGithubRepoRepository;

  setUp(() {
    mockGithubRepoRepository = MockGithubRepoRepository();
    mockGetReposByNameUseCase = GetReposByNameUseCase(mockGithubRepoRepository);
  });

  group('GetReposByNameUseCase', () {
    const tRepoName = 'flutter';
    const tRepository = Repository(
      items: [
        RepositoryData(
          id: 1,
          name: 'flutter',
          description: 'A framework by Google',
        )
      ],
    );
    const tError = AppError.unknown();

    test('should return Repository when the call to repository is successful',
        () async {
      when(() => mockGithubRepoRepository.getReposByName(any()))
          .thenAnswer((_) async => const Right(tRepository));

      final result = await mockGetReposByNameUseCase.call(param: tRepoName);

      expect(result, const Right(tRepository));
      verify(() => mockGithubRepoRepository.getReposByName(tRepoName));
      verifyNoMoreInteractions(mockGithubRepoRepository);
    });

    test('should return AppError when the call to repository is unsuccessful',
        () async {
      when(() => mockGithubRepoRepository.getReposByName(any()))
          .thenAnswer((_) async => const Left(tError));

      final result = await mockGetReposByNameUseCase.call(param: tRepoName);

      expect(result, const Left(tError));
      verify(() => mockGithubRepoRepository.getReposByName(tRepoName));
      verifyNoMoreInteractions(mockGithubRepoRepository);
    });

    test('should return AppError when the param is empty', () async {
      final tError = const AppError.unknown();
      when(() => mockGithubRepoRepository.getReposByName(any()))
          .thenAnswer((_) async => Left(tError));

      final result = await mockGetReposByNameUseCase.call(param: '');

      expect(result, Left(tError));
      verify(() => mockGithubRepoRepository.getReposByName(''));
      verifyNoMoreInteractions(mockGithubRepoRepository);
    });
  });
}
