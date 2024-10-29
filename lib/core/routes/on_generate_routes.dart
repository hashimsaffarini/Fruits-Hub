import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/services/get_it_service.dart';
import 'package:fruits_hub/features/auth/domain/repos/auth_repo.dart';
import 'package:fruits_hub/features/auth/ui/logic/signin/signin_cubit.dart';
import 'package:fruits_hub/features/auth/ui/logic/signup/signup_cubit.dart';
import 'package:fruits_hub/features/auth/ui/views/signin_view.dart';
import 'package:fruits_hub/features/auth/ui/views/signup_view.dart';
import 'package:fruits_hub/features/best_selling_fruits/ui/views/best_selling_view.dart';
import 'package:fruits_hub/features/home/ui/views/home_view.dart';
import 'package:fruits_hub/features/on_boarding/ui/views/on_boarding_view.dart';
import 'package:fruits_hub/features/splash/ui/views/splash_view.dart';

Route<dynamic> onGenerateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(
        builder: (_) => const SplashView(),
      );
    case OnBoardingView.routeName:
      return MaterialPageRoute(
        builder: (_) => const OnBoardingView(),
      );
    case SigninView.routeName:
      return MaterialPageRoute(
        builder: (_) => BlocProvider(
          create: (context) => SigninCubit(getIt<AuthRepo>()),
          child: const SigninView(),
        ),
      );
    case SignupView.routeName:
      return MaterialPageRoute(
        builder: (_) => BlocProvider(
          create: (context) => SignupCubit(getIt<AuthRepo>()),
          child: const SignupView(),
        ),
      );

    case HomeView.routeName:
      return MaterialPageRoute(
        builder: (_) => const HomeView(),
      );
    case BestSellingView.routeName:
      return MaterialPageRoute(
        builder: (_) => const BestSellingView(),
      );
    default:
      return MaterialPageRoute(
        builder: (_) => const Scaffold(),
      );
  }
}
