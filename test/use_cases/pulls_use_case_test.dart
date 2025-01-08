import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:github_repo_app/modules/domain/pull_request/use_case/get_pull_request_for_repo_use_case.dart';
import 'package:github_repo_app/modules/domain/pull_request/repository/pull_request_repository.dart';
import 'package:github_repo_app/modules/foundation/errors/app_error.dart';
import 'package:github_repo_app/modules/domain/pull_request/model/pull_request.dart';

class MockPullRequestRepository extends Mock implements PullRequestRepository {}

void main() {
  late GetPullRequestForRepoUseCase useCase;
  late MockPullRequestRepository mockPullRequestRepository;

  setUp(() {
    mockPullRequestRepository = MockPullRequestRepository();
    useCase = GetPullRequestForRepoUseCase(mockPullRequestRepository);
  });

  group('GetPullRequestForRepoUseCase', () {
    var tParam = GetPullRequestForRepoParams(owner: 'test_owner', repo: 'test_repo');
    const tPullRequestsList = PullRequestsList(items: [PullRequest(id: 1, title: 'Pull Request 1')]);
    const tAppError = AppError.unknown();

    test('should return PullRequestsList when the call to repository is successful', () async {
      when(() => mockPullRequestRepository.getPullRequestsForRepo(any(), any()))
          .thenAnswer((_) async => const Right(tPullRequestsList));

      final result = await useCase.call(param: tParam);

      expect(result, const Right(tPullRequestsList));
      verify(() => mockPullRequestRepository.getPullRequestsForRepo(tParam.owner, tParam.repo));
      verifyNoMoreInteractions(mockPullRequestRepository);
    });

    test('should return AppError when the call to repository is unsuccessful', () async {
      when(() => mockPullRequestRepository.getPullRequestsForRepo(any(), any()))
          .thenAnswer((_) async => const Left(tAppError));

      final result = await useCase.call(param: tParam,);

      expect(result, const Left(tAppError));
      verify(() => mockPullRequestRepository.getPullRequestsForRepo(tParam.owner, tParam.repo));
      verifyNoMoreInteractions(mockPullRequestRepository);
    });
  });
}