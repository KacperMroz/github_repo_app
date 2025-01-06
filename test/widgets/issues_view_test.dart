import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:github_repo_app/features/issues/views/issues_view.dart';
import 'package:github_repo_app/modules/domain/issue/model/issue.dart';

void main() {
  group(
    'IssuesView',
    () {
      testWidgets(
        'displays list of issues when issues are not empty',
        (WidgetTester tester) async {
          const issues = IssuesList(
              items: [Issue(title: 'Issue 1'), Issue(title: 'Issue 2')]);
          await tester.pumpWidget(
            const MaterialApp(
              home: Scaffold(
                body: IssuesView(issues: issues),
              ),
            ),
          );

          expect(find.text('1.    Issue 1'), findsOneWidget);
          expect(find.text('2.    Issue 2'), findsOneWidget);
        },
      );

      testWidgets(
        'displays empty list when issues are empty',
        (WidgetTester tester) async {
          const issues = IssuesList(items: []);
          await tester.pumpWidget(
            const MaterialApp(
              home: Scaffold(
                body: IssuesView(issues: issues),
              ),
            ),
          );

          expect(find.byType(ListView), findsOneWidget);
          expect(find.byType(Container), findsNothing);
        },
      );

      testWidgets(
        'displays issue with default title when issue title is null',
        (WidgetTester tester) async {
          const issues = IssuesList(items: [Issue(title: null)]);
          await tester.pumpWidget(
            const MaterialApp(
              home: Scaffold(
                body: IssuesView(issues: issues),
              ),
            ),
          );

          expect(find.text('1.     - '), findsOneWidget);
        },
      );
    },
  );
}
