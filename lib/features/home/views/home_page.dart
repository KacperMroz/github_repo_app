import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_repo_app/app/router.dart';
import 'package:github_repo_app/features/home/bloc/home_cubit.dart';
import 'package:github_repo_app/features/home/views/home_view.dart';
import 'package:github_repo_app/features/widgets/custom_app_bar.dart';
import 'package:github_repo_app/modules/domain/github_repo/model/repository.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.grey[200],
        appBar: const CustomAppBar(
          title: 'Repositories',
        ),
        body: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            return HomeView(
              searchController: _searchController,
              onSearchPressed: _onSearchPressed,
              repositories: state.repository,
              isLoading: state.isLoading,
              onShowIssuePressed: (repo) => _onShowIssuePressed(repo),
              onShowPRsPressed: (repo) => _onShowPRPressed(repo),
            );
          },
        ));
  }

  void _onSearchPressed() {
    context.read<HomeCubit>().searchRepository(_searchController.text);
  }

  void _onShowIssuePressed(RepositoryData repo) {
    context.go('/home/issue/${repo.owner?.login}/${repo.name}');
  }

  void _onShowPRPressed(RepositoryData repo) {
    context.go('/home/pulls/${repo.owner?.login}/${repo.name}');
  }
}
