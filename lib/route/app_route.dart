import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:login_demo/views/pages/details_login_screen.dart';
import 'package:login_demo/views/pages/login_screen_customer.dart';
import 'package:login_demo/views/pages/menu_screen.dart';

class AppRoute {
  static final GlobalKey<NavigatorState> rootNavigatorKey =
      GlobalKey<NavigatorState>();

  static final GoRouter route = GoRouter(
    navigatorKey: rootNavigatorKey,
    initialLocation: '/login',
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: '/login',
        builder: (context, state) => LoginScreenCustomer(),
      ),
      GoRoute(path: '/home', builder: (context, state) => DetailsLoginScreen()),
      GoRoute(
        path: '/order_details',
        builder: (context, state) => DetailsLoginScreen(),
      ),
      GoRoute(path: '/menu', builder: (context, state) => MenuScreen()),
    ],
  );
}
