import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:women_tech_flutter/data/data_source/api/education_info_api.dart';
import 'package:women_tech_flutter/data/repository/education_repository_impl.dart';
import 'package:women_tech_flutter/domain/use_case/get_education_data_use_case.dart';
import 'package:women_tech_flutter/presentation/components/bottom_tab_bar/bottom_tab_bar.dart';
import 'package:women_tech_flutter/presentation/education/education_screen.dart';
import 'package:women_tech_flutter/presentation/education/education_view_model.dart';
import 'package:women_tech_flutter/presentation/on_boarding/on_boarding_confirm_screen.dart';
import 'package:women_tech_flutter/presentation/on_boarding/on_boarding_step_one_screen.dart';
import 'package:women_tech_flutter/presentation/on_boarding/on_boarding_step_three_screen.dart';
import 'package:women_tech_flutter/presentation/on_boarding/on_boarding_step_two_screen.dart';
import 'package:women_tech_flutter/presentation/sign_in/sign_in_screen.dart';
import 'package:women_tech_flutter/presentation/sign_up/sign_up_confirm_screen.dart';
import 'package:women_tech_flutter/presentation/sign_up/sign_up_screen.dart';
import 'package:women_tech_flutter/presentation/task/add_task_screen.dart';
import 'package:women_tech_flutter/presentation/task/task_list_screen.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const SignInScreen();
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
        GoRoute(
          path: 'signup-confirm',
          builder: (BuildContext context, GoRouterState state) {
            return const SignUpConfirmScreen();
          },
        ),
        GoRoute(
          path: 'task/add',
          builder: (BuildContext context, GoRouterState state) {
            return const AddTaskScreen();
          },
        ),
        GoRoute(
          path: 'task/list',
          builder: (BuildContext context, GoRouterState state) {
            return const TaskListScreen();
          },
        ),
      ],
    ),
    GoRoute(
      path: '/home',
      builder: (BuildContext context, GoRouterState state) {
        return const BottomTabBar();
      },
    ),
    GoRoute(
      path: '/education',
      builder: (BuildContext context, GoRouterState state) {
        return ChangeNotifierProvider(
          create: (_) => EducationViewModel(
            GetEducationDataUseCase(
              EducationRepositoryImpl(
                EducationInfoApi(),
              ),
            ),
          ),
          child: const EducationScreen(),
        );
      },
    ),
    GoRoute(
      path: '/on-boarding/step1',
      builder: (BuildContext context, GoRouterState state) {
        return const OnBoardingStepOneScreen();
      },
    ),
    GoRoute(
      path: '/on-boarding/step2',
      builder: (BuildContext context, GoRouterState state) {
        return const OnBoardingStepTwoScreen();
      },
    ),
    GoRoute(
      path: '/on-boarding/step3',
      builder: (BuildContext context, GoRouterState state) {
        return const OnBoardingStepThreeScreen();
      },
    ),
    GoRoute(
      path: '/on-boarding/confirm',
      builder: (BuildContext context, GoRouterState state) {
        return const OnBoardingConfirmScreen();
      },
    ),
  ],
);
