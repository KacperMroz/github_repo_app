import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:github_repo_app/features/pull_request/cubit/pull_request_cubit.dart';
import 'package:github_repo_app/modules/domain/pull_request/use_case/get_pull_request_for_repo_use_case.dart';
import 'package:github_repo_app/modules/foundation/errors/app_error.dart';
import 'package:github_repo_app/modules/domain/pull_request/model/pull_request.dart';

class MockGetPullRequestForRepoUseCase extends Mock implements GetPullRequestForRepoUseCase {}

void main() {
  late PullRequestCubit cubit;
  late MockGetPullRequestForRepoUseCase mockGetPullRequestForRepoUseCase;

  setUp(() {
    mockGetPullRequestForRepoUseCase = MockGetPullRequestForRepoUseCase();
    cubit = PullRequestCubit(mockGetPullRequestForRepoUseCase);
  });

  group('PullRequestCubit', () {
    const tOwnerName = 'test_owner';
    const tRepoName = 'test_repo';
    const tPullRequestsList = PullRequestsList(items: [PullRequest(id: 1, title: 'Pull Request 1')]);
    const tAppError = AppError.unknown();

    blocTest<PullRequestCubit, PullRequestState>(
      'emits PullRequestState with pullRequests when getPullRequestByRepo is successful',
      build: () {
        when(() => mockGetPullRequestForRepoUseCase(param: any(named: 'param'), param2: any(named: 'param2')))
            .thenAnswer((_) async => const Right(tPullRequestsList));
        return cubit;
      },
      act: (cubit) => cubit.getPullRequestByRepo(tOwnerName, tRepoName),
      expect: () => [
        isA<PullRequestState>().having((state) => state.pullRequests, 'pullRequests', tPullRequestsList),
      ],
    );

    blocTest<PullRequestCubit, PullRequestState>(
      'emits PullRequestState with error when getPullRequestByRepo fails',
      build: () {
        when(() => mockGetPullRequestForRepoUseCase(param: any(named: 'param'), param2: any(named: 'param2')))
            .thenAnswer((_) async => const Left(tAppError));
        return cubit;
      },
      act: (cubit) => cubit.getPullRequestByRepo(tOwnerName, tRepoName),
      expect: () => [
        isA<PullRequestState>().having((state) => state.error, 'error', tAppError),
      ],
    );
  });
}