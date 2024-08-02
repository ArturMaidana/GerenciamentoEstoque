import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:stock_management/app/core/infraestructure/routes/routes.dart';
import 'package:stock_management/app/features/auth/ui/auth_page.dart';
import 'package:stock_management/app/features/home/ui/home_page.dart';
import 'package:stock_management/app/features/profile/ui/profile_page.dart';
import 'package:stock_management/app/features/services/ui/services_page.dart';
import 'package:stock_management/app/features/shared/ui/shared_splash_page.dart';

final _key = GlobalKey<NavigatorState>();
final GoRouter router = GoRouter(
  navigatorKey: _key,
  initialLocation: Routes.SPLASH,
  routes: [
    GoRoute(
      path: Routes.SPLASH,
      name: 'Splash',
      builder: (context, state) {
        return const SharedSplashPage();
      },
    ),
    GoRoute(
      path: Routes.HOME,
      name: 'Home',
      builder: (context, state) {
        return const HomePage();
      },
    ),
    GoRoute(
      path: Routes.AUTH,
      name: 'Auth',
      builder: (context, state) {
        return const AuthPage();
      },
    ),
    GoRoute(
      path: Routes.SERVICES,
      name: 'Services',
      builder: (context, state) {
        return const ServicesPage();
      },
    ),
    GoRoute(
      path: Routes.PROFILES,
      name: 'Profiles',
      builder: (context, state) {
        return const ProfilePage();
      },
    ),
  ],
);
