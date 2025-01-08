import 'package:flutter/material.dart';
import 'package:github_repo_app/modules/domain/issue/model/issue.dart';
import 'package:github_repo_app/modules/foundation/theme/app_colors.dart';

class IssuesView extends StatelessWidget {
  const IssuesView({super.key, required this.issues});

  final IssuesList? issues;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: ListView.builder(
        itemCount: issues?.items.length ?? 0,
        itemBuilder: (context, index) {
          final displayIndex = index + 1;
          return Column(
            children: [
              Container(
                padding: const EdgeInsets.all(20.0),
                alignment: Alignment.centerLeft,
                child: Text(
                  "$displayIndex.    ${issues?.items[index].title ?? " - "}",
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
