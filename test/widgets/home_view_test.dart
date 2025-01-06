import 'package:flutter_test/flutter_test.dart';
import 'package:github_repo_app/features/home/views/home_view.dart';
import 'package:github_repo_app/modules/domain/github_repo/model/repository.dart';
import 'package:github_repo_app/features/home/widgets/repos_list_view.dart';
import 'package:github_repo_app/features/home/widgets/repo_search_row.dart';
import 'package:flutter/material.dart';

void main() {
  group('HomeView', () {
    testWidgets('displays RepoSearchRow and Divider', (WidgetTester tester) async {
      final searchController = TextEditingController();
      await tester.pumpWidget(MaterialApp(
        home: MaterialApp(
          home: Scaffold(
            body: HomeView(
              searchController: searchController,
              onSearchPressed: () {},
              repositories: const Repository(items: []),
              onShowIssuePressed: (repo) {},
              onShowPRsPressed: (repo) {},
            ),
          ),
        ),
      ));

      expect(find.byType(RepoSearchRow), findsOneWidget);
      expect(find.byType(Divider), findsOneWidget);
    });

    testWidgets('displays ReposListView when repositories are not empty', (WidgetTester tester) async {
      final searchController = TextEditingController();
      const repositories = Repository(items: [RepositoryData(name: 'repo1')]);
      await tester.pumpWidget(MaterialApp(
        home: MaterialApp(
          home: Scaffold(
            body: HomeView(
              searchController: searchController,
              onSearchPressed: () {},
              repositories: repositories,
              onShowIssuePressed: (repo) {},
              onShowPRsPressed: (repo) {},
            ),
          ),
        ),
      ));

      expect(find.byType(ReposListView), findsOneWidget);
      expect(find.text('No repositories found'), findsNothing);
    });

    testWidgets('displays "No repositories found" when repositories are empty', (WidgetTester tester) async {
      final searchController = TextEditingController();
      await tester.pumpWidget(MaterialApp(
        home: MaterialApp(
          home: Scaffold(
            body: HomeView(
              searchController: searchController,
              onSearchPressed: () {},
              repositories: const Repository(items: []),
              onShowIssuePressed: (repo) {},
              onShowPRsPressed: (repo) {},
            ),
          ),
        ),
      ));

      expect(find.byType(ReposListView), findsNothing);
      expect(find.text('No repositories found'), findsOneWidget);
    });
  });
}