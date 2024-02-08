import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_integration_examples/pages/about.dart';
import 'package:go_router_integration_examples/pages/contact_us.dart';
import 'package:go_router_integration_examples/pages/error_page.dart';
import 'package:go_router_integration_examples/pages/home.dart';
import 'package:go_router_integration_examples/pages/profile.dart';
import 'package:go_router_integration_examples/projects/routes/app_route_const.dart';

class MyAppRouter {
  GoRouter router = GoRouter(
    routes: [
      GoRoute(
        name: MyAppRoutesConstants.homeRouteName,
        path: '/',
        pageBuilder: (context, state) => const MaterialPage(child: Home()),
      ),
      GoRoute(
        name: MyAppRoutesConstants.profileRouteName,
        path: '/profile/:name/:userId',
        pageBuilder: (context, state) =>
            MaterialPage(child: Profile(name: state.params['name']!,userId: state.params['userId']!,)),
      ),
      GoRoute(
        name: MyAppRoutesConstants.contactUsRouteName,
        path: '/contact_us',
        pageBuilder: (context, state) => const MaterialPage(child: ContactUs()),
      ),
      GoRoute(
        name: MyAppRoutesConstants.aboutRouteName,
        path: '/about',
        pageBuilder: (context, state) => const MaterialPage(child: About()),
      ),
    ],
    errorPageBuilder: (context, state) {
      return const MaterialPage(child: ErrorPage());
    },
  );
}
