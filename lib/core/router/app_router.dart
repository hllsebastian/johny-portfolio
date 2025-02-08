import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:johny_portfolio/core/logging/logger_service.dart';
import 'package:johny_portfolio/features/hangman/presentation/screen/hangman_screen.dart';
import 'package:johny_portfolio/features/home/presentation/view/home_view.dart';
import 'package:johny_portfolio/features/pokemon/presentation/cubit/pokemon_cubit.dart';
import 'package:johny_portfolio/features/pokemon/presentation/view/pokemon_view.dart';
import 'package:johny_portfolio/features/projects_section/presentation/view/project_section_view.dart';
import 'package:johny_portfolio/features/wrap_objects/presentation/screen/wrap_objects_screen.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => HomeView(),
      ),
      GoRoute(
        path: '/hangman',
        builder: (context, state) => HangmanScreen(),
      ),
      GoRoute(
        path: '/objects',
        builder: (context, state) => WrapObjectsScreen(),
      ),
      GoRoute(
        path: '/pokemon',
        builder: (context, state) => BlocProvider(
          create: (context) =>
              GetIt.I.get<PokemonCubit>()..fetchRandomPokemon(),
          child: PokemonView(),
        ),
      ),
      GoRoute(
        path: '/project-section',
        builder: (context, state) => ProjectSectionView(),
      ),
    ],
    errorBuilder: (context, state) {
      LoggerService.logError('Error: ${state.error}');
      return Scaffold(
        body: Center(
          child: Text('Error: ${state.error}'),
        ),
      );
    },
    observers: [NavigatorObserverWithLogging()],
  );
}

class NavigatorObserverWithLogging extends NavigatorObserver {
  @override
  void didPush(Route route, Route? previousRoute) {
    super.didPush(route, previousRoute);
    LoggerService.logInfo('Navigated to: ${route.settings.name}');
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    super.didPop(route, previousRoute);
    LoggerService.logInfo('Popped from: ${route.settings.name}');
  }
}
