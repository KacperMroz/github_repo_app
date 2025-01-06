import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_repo_app/modules/domain/issue/model/issue.dart';
import 'package:github_repo_app/modules/domain/issue/use_case/get_issues_for_repo_use_case.dart';
import 'package:github_repo_app/modules/foundation/errors/app_error.dart';
import 'package:injectable/injectable.dart';

part 'issues_cubit.freezed.dart';

@injectable
class IssuesCubit extends Cubit<IssuesState> {
  IssuesCubit(this._getIssuesByRepoUseCase) : super(const IssuesState());

  final GetIssuesForRepoUseCase _getIssuesByRepoUseCase;

  Future<void> getIssuesByRepo(String owner, String repo) async {
    (await _getIssuesByRepoUseCase(param: owner, param2: repo)).fold(
        (l) => emit(state.copyWith(error: l)),
        (r) => emit(state.copyWith(issues: r)));
  }
}

@freezed
class IssuesState with _$IssuesState {
  const factory IssuesState({
    @Default(false) bool isLoading,
    IssuesList? issues,
    AppError? error,
  }) = _IssuesState;

  const IssuesState._();
}
