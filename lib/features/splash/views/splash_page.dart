import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_repo_app/features/splash/bloc/splash_bloc.dart';
import 'package:github_repo_app/features/splash/views/splash_view.dart';
import 'package:github_repo_app/services/navigation_service.dart';
import 'package:go_router/go_router.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashCubit, SplashState>(
      listener: (context, state) {
        state.maybeWhen(
          success: () {
            context.go(NavigationService.home);
          },
          orElse: () => const SizedBox(),
        );
      },
      child: const Scaffold(
        backgroundColor: Colors.white,
        body: SplashView(),
      ),
    );
  }
}
