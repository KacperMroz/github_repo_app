// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:github_repo_app/app/dio_module.dart' as _i37;
import 'package:github_repo_app/features/home/bloc/home_cubit.dart' as _i777;
import 'package:github_repo_app/features/issues/cubit/issues_cubit.dart'
    as _i457;
import 'package:github_repo_app/features/pull_request/cubit/pull_request_cubit.dart'
    as _i553;
import 'package:github_repo_app/features/splash/bloc/splash_bloc.dart' as _i798;
import 'package:github_repo_app/modules/data/github_repo/repository/github_repo_repository.dart'
    as _i912;
import 'package:github_repo_app/modules/data/issue/repository/issue_repository.dart'
    as _i876;
import 'package:github_repo_app/modules/data/pull_request/repository/pull_request_repository.dart'
    as _i801;
import 'package:github_repo_app/modules/domain/github_repo/repository/github_repo_repository.dart'
    as _i105;
import 'package:github_repo_app/modules/domain/github_repo/use_case/get_repos_by_name_use_case.dart'
    as _i269;
import 'package:github_repo_app/modules/domain/issue/repository/issue_repository.dart'
    as _i585;
import 'package:github_repo_app/modules/domain/issue/use_case/get_issues_for_repo_use_case.dart'
    as _i289;
import 'package:github_repo_app/modules/domain/pull_request/repository/pull_request_repository.dart'
    as _i18;
import 'package:github_repo_app/modules/domain/pull_request/use_case/get_pull_request_for_repo_use_case.dart'
    as _i790;
import 'package:github_repo_app/services/api_client.dart' as _i868;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final dioModule = _$DioModule();
    gh.factory<_i798.SplashCubit>(() => _i798.SplashCubit());
    gh.singleton<_i361.Dio>(() => dioModule.dio());
    gh.singleton<_i868.ApiClient>(() => _i868.ApiClient(gh<_i361.Dio>()));
    gh.singleton<_i18.PullRequestRepository>(
        () => _i801.PullRequestRepositoryImpl(gh<_i868.ApiClient>()));
    gh.singleton<_i105.GithubRepoRepository>(
        () => _i912.GithubRepoRepositoryImpl(gh<_i868.ApiClient>()));
    gh.factory<_i269.GetReposByNameUseCase>(
        () => _i269.GetReposByNameUseCase(gh<_i105.GithubRepoRepository>()));
    gh.singleton<_i777.HomeCubit>(
        () => _i777.HomeCubit(gh<_i269.GetReposByNameUseCase>()));
    gh.singleton<_i585.IssueRepository>(
        () => _i876.IssueRepositoryImpl(gh<_i868.ApiClient>()));
    gh.factory<_i790.GetPullRequestForRepoUseCase>(() =>
        _i790.GetPullRequestForRepoUseCase(gh<_i18.PullRequestRepository>()));
    gh.factory<_i553.PullRequestCubit>(
        () => _i553.PullRequestCubit(gh<_i790.GetPullRequestForRepoUseCase>()));
    gh.factory<_i289.GetIssuesForRepoUseCase>(
        () => _i289.GetIssuesForRepoUseCase(gh<_i585.IssueRepository>()));
    gh.factory<_i457.IssuesCubit>(
        () => _i457.IssuesCubit(gh<_i289.GetIssuesForRepoUseCase>()));
    return this;
  }
}

class _$DioModule extends _i37.DioModule {}
