import 'package:flutter/material.dart';
import 'package:github_repo_app/features/widgets/custom_app_button.dart';
import 'package:github_repo_app/modules/domain/github_repo/model/repository.dart';
import 'package:github_repo_app/modules/foundation/theme/app_colors.dart';

class RepoListViewItem extends StatelessWidget {
  const RepoListViewItem({
    super.key,
    required this.repository,
    required this.onShowIssuePressed,
    required this.onShowPRsPressed,
  });

  final RepositoryData? repository;
  final Function(RepositoryData repo) onShowIssuePressed;
  final Function(RepositoryData repo) onShowPRsPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      height: 200,
      decoration: BoxDecoration(
        color: AppColors.appWhite,
        borderRadius: BorderRadius.circular(10),
        border: const Border(
          bottom: BorderSide(
            color: AppColors.appGrey,
            width: 1,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              repository?.name ?? '',
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Divider(
              height: 1,
              color: AppColors.appGrey,
            ),
            Row(
              children: [
                const Icon(
                  Icons.description,
                  size: 16,
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    repository?.description ?? ' - ',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Icons.language,
                  size: 16,
                ),
                const SizedBox(width: 8),
                Text(
                  repository?.language ?? '',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ],
            ),
            Row(
              children: [
                const Icon(
                  Icons.remove_red_eye,
                  size: 16,
                ),
                const SizedBox(width: 8),
                Text(repository?.watchersCount.toString() ?? ''),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomAppButton(
                  title: "Show Issues",
                  onPressed: () => onShowIssuePressed(
                    repository!,
                  ),
                ),
                CustomAppButton(
                  title: "Show PRs",
                  onPressed: () => onShowPRsPressed(
                    repository!,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
