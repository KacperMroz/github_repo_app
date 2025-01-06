import 'package:flutter/material.dart';
import 'package:github_repo_app/features/widgets/custom_app_button.dart';
import 'package:github_repo_app/modules/domain/github_repo/model/repository.dart';
import 'package:github_repo_app/modules/foundation/theme/app_colors.dart';

class ReposListView extends StatelessWidget {
  const ReposListView({
    super.key,
    required this.repositories,
    required this.onShowIssuePressed,
    required this.onShowPRsPressed,
  });

  final Repository? repositories;
  final Function(RepositoryData repo) onShowIssuePressed;
  final Function(RepositoryData repo) onShowPRsPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      height: MediaQuery.of(context).size.height * 0.7,
      child: ListView.builder(
        itemCount: repositories?.items.length ?? 0,
        itemBuilder: (context, index) {
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
                    repositories?.items[index].name ?? '',
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
                          repositories?.items[index].description ?? ' - ',
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
                        repositories?.items[index].language ?? '',
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
                      Text(repositories?.items[index].watchersCount
                          .toString() ??
                          ''),
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
                          repositories!.items[index],
                        ),
                      ),
                      CustomAppButton(
                        title: "Show PRs",
                        onPressed: () => onShowPRsPressed(
                          repositories!.items[index],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}