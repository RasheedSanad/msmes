import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

import '../../core/ui/scaffold_with_nested_navigation/scaffold_with_nested_navigation_view.dart';
import 'app_router.dart';
import 'app_router_constant.dart';

// for Bottom Navigation bar
// private navigators
final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorAKey = GlobalKey<NavigatorState>(debugLabel: 'shellA');
final _shellNavigatorBKey = GlobalKey<NavigatorState>(debugLabel: 'shellB');
final _shellNavigatorCKey = GlobalKey<NavigatorState>(debugLabel: 'shellC');
final _shellNavigatorDKey = GlobalKey<NavigatorState>(debugLabel: 'shellD');
final _shellNavigatorEKey = GlobalKey<NavigatorState>(debugLabel: 'shellE');

// TODO: use GoRouter with state managements Provider
final goRouter = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: AppRouterConstant.HOME_PAGE,
  // * Passing a navigatorKey causes an issue on hot reload:
  // * https://github.com/flutter/flutter/issues/113757#issuecomment-1518421380
  // * However it's still necessary otherwise the navigator pops back to
  // * root on hot reload
  debugLogDiagnostics: true,
  routes: [
    // Stateful navigation based on:
    // https://github.com/flutter/packages/blob/main/packages/go_router/example/lib/stateful_shell_route.dart
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return ScaffoldWithNestedNavigationView(
            navigationShell: navigationShell);
      },
      branches: [
        // * A_BOTTOM_NAVIGATION_BAR
        StatefulShellBranch(
          navigatorKey: _shellNavigatorAKey,
          routes: [
            // home
            GoRoute(
              path: AppRouterConstant.HOME_PAGE,
              pageBuilder: (context, state) =>
                  AppRouter.homePageRouteBuilder(context, state),
            ),
          ],
        ),
        // * B_BOTTOM_NAVIGATION_BAR
        StatefulShellBranch(
          navigatorKey: _shellNavigatorBKey,
          routes: [
            // idea
            GoRoute(
              path: AppRouterConstant.IDEA_PAGE,
              pageBuilder: (context, state) =>
                  AppRouter.ideaPageRouteBuilder(context, state),
            ),
          ],
        ),

        // * C_BOTTOM_NAVIGATION_BAR
        StatefulShellBranch(
          navigatorKey: _shellNavigatorCKey,
          routes: [
            // my tasks
            GoRoute(
              path: AppRouterConstant.MY_TASKS_PAGE,
              pageBuilder: (context, state) =>
                  AppRouter.myTasksPageRouteBuilder(context, state),
            ),
          ],
        ),
        // * D_BOTTOM_NAVIGATION_BAR
        StatefulShellBranch(
          navigatorKey: _shellNavigatorDKey,
          routes: [
            // messages
            GoRoute(
              path: AppRouterConstant.MESSAGES_PAGE,
              pageBuilder: (context, state) =>
                  AppRouter.messagesPageRouteBuilder(context, state),
            ),
          ],
        ),
        // * E_BOTTOM_NAVIGATION_BAR
        StatefulShellBranch(
          navigatorKey: _shellNavigatorEKey,
          routes: [
            // more
            GoRoute(
              path: AppRouterConstant.MORE_PAGE,
              pageBuilder: (context, state) =>
                  AppRouter.morePageRouteBuilder(context, state),
            ),
          ],
        ),
      ],
    ),
  ],
);
