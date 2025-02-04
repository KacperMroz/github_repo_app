import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_repo_app/modules/domain/pull_request/model/pull_request.dart';
import 'package:github_repo_app/modules/domain/pull_request/use_case/get_pull_request_for_repo_use_case.dart';
import 'package:github_repo_app/modules/foundation/errors/app_error.dart';
import 'package:injectable/injectable.dart';

part 'pull_request_cubit.freezed.dart';

@injectable
class PullRequestCubit extends Cubit<PullRequestState> {
  PullRequestCubit(this._getPullRequestForRepoUseCase)
      : super(const PullRequestState());

  final GetPullRequestForRepoUseCase _getPullRequestForRepoUseCase;

  Future<void> getPullRequestByRepo(String owner, String repo) async {
    (await _getPullRequestForRepoUseCase(
      param: GetPullRequestForRepoParams(owner: owner, repo: repo),
    ))
        .fold(
      (error) => emit(state.copyWith(error: error)),
      (pulls) => emit(
        state.copyWith(pullRequests: pulls),
      ),
    );
  }
}

@freezed
class PullRequestState with _$PullRequestState {
  const factory PullRequestState({
    @Default(false) bool isLoading,
    List<PullRequest>? pullRequests,
    AppError? error,
  }) = _PullRequestState;
}
