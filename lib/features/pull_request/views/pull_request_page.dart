import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_repo_app/features/pull_request/cubit/pull_request_cubit.dart';
import 'package:github_repo_app/features/pull_request/views/pull_request_view.dart';
import 'package:github_repo_app/features/widgets/custom_app_bar.dart';

class PullRequestPage extends StatefulWidget {
  const PullRequestPage({
    super.key,
    required this.owner,
    required this.repoName,
  });

  final String owner;
  final String repoName;

  @override
  State<PullRequestPage> createState() => _IssuesPageState();
}

class _IssuesPageState extends State<PullRequestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'PRs for ${widget.repoName}'),
      body: BlocBuilder<PullRequestCubit, PullRequestState>(
        builder: (context, state) {
          return PullRequestView(
            pulls: state.pullRequests,
          );
        },
      ),
    );
  }
}
