import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:msmes_app/features/home/presentation/pages/home_page.dart';
import 'package:msmes_app/features/idea/presentation/pages/idea_page.dart';
import 'package:msmes_app/features/messages/presentation/pages/messages_page.dart';
import 'package:msmes_app/features/more/presentation/pages/more_page.dart';
import 'package:msmes_app/features/my_tasks/presentation/pages/my_tasks_page.dart';
import 'package:msmes_app/features/test_page/test_page.dart';

import '../../core/ui/pages/ui_wrong_page.dart';

class AppRouter {
  AppRouter._(); // Private constructor to prevent instantiation

  //**************************************************/
  //* Begin View Route Builder
  // ? A Bottom Navigation Bar
// * home
// home
  static homePageRouteBuilder(BuildContext context, GoRouterState state) =>
      NoTransitionPage(
        child: HomePage(
          key: state.pageKey,
        ),
      );
// test
  static testPageRouteBuilder(BuildContext context, GoRouterState state) =>
      NoTransitionPage(
        child: state.extra is String
            ? TestPage(
                key: state.pageKey,
                title: state.extra as String,
              )
            : const UiWrongPage(),
      );
// idea
  static ideaPageRouteBuilder(BuildContext context, GoRouterState state) =>
      NoTransitionPage(
        child: IdeaPage(
          key: state.pageKey,
        ),
      );
// myTasks
  static myTasksPageRouteBuilder(BuildContext context, GoRouterState state) =>
      NoTransitionPage(
        child: MyTasksPage(
          key: state.pageKey,
        ),
      );
// messages
  static messagesPageRouteBuilder(BuildContext context, GoRouterState state) =>
      NoTransitionPage(
        child: MessagesPage(
          key: state.pageKey,
        ),
      );
// more
  static morePageRouteBuilder(BuildContext context, GoRouterState state) =>
      NoTransitionPage(
        child: MorePage(
          key: state.pageKey,
        ),
      );

  //* End View Route Builder
  //**************************************************/
}
