import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_repo_app/features/issues/cubit/issues_cubit.dart';
import 'package:github_repo_app/features/issues/views/issues_view.dart';
import 'package:github_repo_app/features/widgets/custom_app_bar.dart';

class IssuesPage extends StatefulWidget {
  const IssuesPage({
    super.key,
    required this.owner,
    required this.repoName,
  });

  final String owner;
  final String repoName;

  @override
  State<IssuesPage> createState() => _IssuesPageState();
}

class _IssuesPageState extends State<IssuesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Issues for ${widget.repoName}'),
      body: BlocBuilder<IssuesCubit, IssuesState>(
        builder: (context, state) {
          return IssuesView(
            issues: state.issues,
          );
        },
      ),
    );
  }
}
