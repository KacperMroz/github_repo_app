import 'package:flutter/material.dart';
import 'package:github_repo_app/modules/domain/pull_request/model/pull_request.dart';
import 'package:github_repo_app/modules/foundation/theme/app_colors.dart';

class PullRequestView extends StatelessWidget {
  const PullRequestView({super.key, required this.pulls});

  final PullRequestsList? pulls;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: ListView.builder(
        itemCount: pulls?.items.length ?? 0,
        itemBuilder: (context, index) {
          var displayIndex = index + 1;
          return Column(
            children: [
              Container(
                padding: const EdgeInsets.all(20.0),
                alignment: Alignment.centerLeft,
                child: Text(
                  "$displayIndex.    ${pulls?.items[index].title ?? " - "}",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: Divider(
                  color: AppColors.appGrey,
                  height: 1,
                  thickness: 1,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
