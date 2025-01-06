import 'package:flutter/material.dart';
import 'package:github_repo_app/modules/foundation/theme/app_colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(
        color: AppColors.appWhite,
      ),
      backgroundColor: AppColors.purpleColor,
      centerTitle: true,
      title: Text(
        title,
        style: Theme.of(context).textTheme.headlineSmall!.copyWith(
              color: AppColors.appWhite,
            ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
