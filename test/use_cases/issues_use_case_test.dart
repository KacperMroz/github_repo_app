import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:github_repo_app/features/issues/cubit/issues_cubit.dart';
import 'package:github_repo_app/modules/domain/issue/model/issue.dart';
import 'package:github_repo_app/modules/domain/issue/repository/issue_repository.dart';
import 'package:github_repo_app/modules/domain/issue/use_case/get_issues_for_repo_use_case.dart';
import 'package:github_repo_app/modules/foundation/errors/app_error.dart';
import 'package:mocktail/mocktail.dart';

class MockIssueRepository extends Mock implements IssueRepository {}

void main() {
  late GetIssuesForRepoUseCase mockGetIssuesForRepoUseCase;
  late MockIssueRepository mockIssueRepository;
  late IssuesCubit issuesCubit;

  setUp(() {
    mockIssueRepository = MockIssueRepository();
    mockGetIssuesForRepoUseCase = GetIssuesForRepoUseCase(mockIssueRepository);
    issuesCubit = IssuesCubit(mockGetIssuesForRepoUseCase);
  });

  tearDown(() {
    issuesCubit.close();
    resetMocktailState();
  });

  group('GetIssuesForRepoUseCase', () {
    final tParam =
        GetIssuesForRepoParams(owner: 'test_owner', repo: 'test_repo');
    const tIssuesList = IssuesList(items: [Issue(id: 1, title: 'Issue 1')]);
    const tAppError = AppError.unknown();

    test('should return IssuesList when the call to repository is successful',
        () async {
      when(() => mockIssueRepository.getIssuesForRepo(any(), any()))
          .thenAnswer((_) async => const Right(tIssuesList));

      final result = await mockGetIssuesForRepoUseCase.call(param: tParam);

      expect(result, const Right(tIssuesList));
      verify(
        () => mockIssueRepository.getIssuesForRepo(tParam.owner, tParam.repo),
      );
      verifyNoMoreInteractions(mockIssueRepository);
    });

    test('should return AppError when the call to repository is unsuccessful',
        () async {
      when(() => mockIssueRepository.getIssuesForRepo(any(), any()))
          .thenAnswer((_) async => const Left(tAppError));

      final result = await mockGetIssuesForRepoUseCase.call(
        param: tParam,
      );

      expect(result, const Left(tAppError));
      verify(
        () => mockIssueRepository.getIssuesForRepo(tParam.owner, tParam.repo),
      );
      verifyNoMoreInteractions(mockIssueRepository);
    });
  });
}
