import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_repo_app/modules/domain/github_repo/model/repository.dart';
import 'package:github_repo_app/modules/domain/github_repo/use_case/get_repos_by_name_use_case.dart';
import 'package:github_repo_app/modules/domain/issue/model/issue.dart';
import 'package:github_repo_app/modules/foundation/errors/app_error.dart';
import 'package:injectable/injectable.dart';

part 'home_cubit.freezed.dart';

@singleton
class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._getReposByNameUseCase) : super(const HomeState());

  final GetReposByNameUseCase _getReposByNameUseCase;

  Future<void> searchRepository(String param) async {
    emit(state.copyWith(isLoading: true));
    (await _getReposByNameUseCase(
      param: GetReposByNameParams(name: param),
    ))
        .fold(
      (error) => emit(
        state.copyWith(error: error, isLoading: false),
      ),
      (repository) => emit(
        state.copyWith(
          repository: repository,
          searcherQuery: param,
          isLoading: false,
        ),
      ),
    );
  }
}

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(false) bool isLoading,
    List<RepositoryData>? repository,
    AppError? error,
    String? searcherQuery,
    IssuesList? issues,
  }) = _HomeState;
}
