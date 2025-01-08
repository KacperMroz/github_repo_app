import 'package:flutter/material.dart';
import 'package:github_repo_app/modules/foundation/theme/app_colors.dart';

class RepoSearchRow extends StatelessWidget {
  const RepoSearchRow({
    super.key,
    required this.searchController,
    required this.onSearchPressed,
  });

  final TextEditingController searchController;
  final VoidCallback onSearchPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 4,
          child: Container(
            padding: const EdgeInsets.fromLTRB(16.0, 16, 16.0, 16.0),
            child: TextField(
              controller: searchController,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(16),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: const BorderSide(
                    color: AppColors.appGrey,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: const BorderSide(
                    color: AppColors.appGrey,
                  ),
                ),
                hintText: "Search for a repository...",
                hintStyle: const TextStyle(
                  color: AppColors.appGrey,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: IconButton(
            icon: const Icon(Icons.search),
            onPressed: onSearchPressed,
          ),
        ),
      ],
    );
  }
}
