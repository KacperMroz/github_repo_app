import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:github_repo_app/features/issues/cubit/issues_cubit.dart';
import 'package:github_repo_app/modules/domain/issue/model/issue.dart';
import 'package:github_repo_app/modules/domain/issue/use_case/get_issues_for_repo_use_case.dart';
import 'package:github_repo_app/modules/foundation/errors/app_error.dart';
import 'package:mocktail/mocktail.dart';

class MockGetIssuesForRepoUseCase extends Mock
    implements GetIssuesForRepoUseCase {}

void main() {
  late MockGetIssuesForRepoUseCase mockGetIssuesForRepoUseCase;

  setUp(() {
    mockGetIssuesForRepoUseCase = MockGetIssuesForRepoUseCase();
  });

  setUpAll(() {
    registerFallbackValue(GetIssuesForRepoParams(owner: '', repo: ''));
  });

  group('IssuesCubit', () {
    const tOwner = 'test_owner';
    const tRepo = 'test_repo';
    const tIssuesList = IssuesList(items: [Issue(id: 1, title: 'Issue 1')]);
    const tAppError = AppError.unknown();

    blocTest<IssuesCubit, IssuesState>(
      'emits IssuesState with issues when getIssuesByRepo is successful',
      build: () {
        when(() => mockGetIssuesForRepoUseCase(param: any(named: 'param')))
            .thenAnswer((_) async => const Right(tIssuesList));
        return IssuesCubit(mockGetIssuesForRepoUseCase);
      },
      act: (cubit) => cubit.getIssuesByRepo(tOwner, tRepo),
      expect: () => [
        isA<IssuesState>()
            .having((state) => state.issues, 'issues', tIssuesList),
      ],
    );

    blocTest<IssuesCubit, IssuesState>(
      'emits IssuesState with error when getIssuesByRepo is unsuccessful',
      build: () {
        when(() => mockGetIssuesForRepoUseCase(param: any(named: 'param')))
            .thenAnswer((_) async => const Left(tAppError));
        return IssuesCubit(mockGetIssuesForRepoUseCase);
      },
      act: (cubit) => cubit.getIssuesByRepo(tOwner, tRepo),
      expect: () => [
        isA<IssuesState>().having((state) => state.error, 'error', tAppError),
      ],
    );
  });
}
