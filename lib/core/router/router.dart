import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:women_tech_flutter/presentation/components/bottom_tab_bar/bottom_tab_bar.dart';
import 'package:women_tech_flutter/presentation/sign_in/sign_in_screen.dart';
import 'package:women_tech_flutter/presentation/sign_up/sign_up_screen.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const BottomTabBar();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'signin',
          builder: (BuildContext context, GoRouterState state) {
            return const SignInScreen();
          },
        ),
        GoRoute(
          path: 'signup',
          builder: (BuildContext context, GoRouterState state) {
            return const SignUpScreen();
          },
        ),
      ],
    ),
  ],
);
