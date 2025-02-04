import 'package:flutter/material.dart';
import 'package:github_repo_app/features/home/widgets/repos_list_view.dart';
import 'package:github_repo_app/modules/domain/github_repo/model/repository.dart';
import 'package:github_repo_app/modules/foundation/theme/app_colors.dart';

import '../widgets/repo_search_row.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
    required this.searchController,
    required this.onSearchPressed,
    required this.repositories,
    required this.onShowIssuePressed,
    required this.onShowPRsPressed,
    required this.isLoading,
  });

  final TextEditingController searchController;
  final VoidCallback onSearchPressed;
  final List<RepositoryData>? repositories;
  final Function(RepositoryData repo) onShowIssuePressed;
  final Function(RepositoryData repo) onShowPRsPressed;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RepoSearchRow(
          searchController: searchController,
          onSearchPressed: onSearchPressed,
        ),
        const SizedBox(
          height: 8,
        ),
        const Divider(
          height: 1,
          color: AppColors.appGrey,
        ),
        const SizedBox(
          height: 16,
        ),
        if (isLoading)
          const Center(child: CircularProgressIndicator())
        else
          repositories != null && repositories?.isNotEmpty == true
              ? ReposListView(
                  repositories: repositories,
                  onShowIssuePressed: onShowIssuePressed,
                  onShowPRsPressed: onShowPRsPressed,
                )
              : const Center(
                  child: Text('No repositories found'),
                ),
      ],
    );
  }
}
