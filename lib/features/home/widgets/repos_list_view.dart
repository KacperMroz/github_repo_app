import 'package:flutter/material.dart';
import 'package:github_repo_app/features/home/widgets/repo_list_view_item.dart';
import 'package:github_repo_app/modules/domain/github_repo/model/repository.dart';

class ReposListView extends StatelessWidget {
  const ReposListView({
    super.key,
    required this.repositories,
    required this.onShowIssuePressed,
    required this.onShowPRsPressed,
  });

  final List<RepositoryData>? repositories;
  final Function(RepositoryData repo) onShowIssuePressed;
  final Function(RepositoryData repo) onShowPRsPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      height: MediaQuery.of(context).size.height * 0.7,
      child: ListView.builder(
        itemCount: repositories?.length ?? 0,
        itemBuilder: (context, index) {
          final repository = repositories?[index];
          return RepoListViewItem(
            repository: repository,
            onShowIssuePressed: onShowIssuePressed,
            onShowPRsPressed: onShowPRsPressed,
          );
        },
      ),
    );
  }
}
