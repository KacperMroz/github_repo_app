import 'package:flutter/material.dart';
import 'package:github_repo_app/modules/foundation/theme/app_colors.dart';

class CustomAppButton extends StatelessWidget {
  const CustomAppButton({
    super.key,
    required this.title,
    required this.onPressed,
  });

  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
        decoration: BoxDecoration(
          color: AppColors.purpleColor,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Row(
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                color: AppColors.appWhite,
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            const Icon(
              Icons.arrow_forward_ios,
              color: AppColors.appWhite,
              size: 10,
            )
          ],
        ),
      ),
    );
  }
}