import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_integration_examples/pages/about.dart';
import 'package:go_router_integration_examples/pages/contact_us.dart';
import 'package:go_router_integration_examples/pages/error_page.dart';
import 'package:go_router_integration_examples/pages/home.dart';
import 'package:go_router_integration_examples/pages/profile.dart';
import 'package:go_router_integration_examples/routes/app_route_const.dart';

class MyAppRouter {
  static GoRouter returnRouter(bool isAuth) {
    GoRouter router = GoRouter(
        routes: [
          GoRoute(
            path: "/",
            pageBuilder: (context, state) => const MaterialPage(child: Home()),
          ),
          GoRoute(
              name: MyAppRoutesConstants.profileRouteName,
              path: "/profile/:username/:userid",
              pageBuilder: (context, state) {
                return MaterialPage(
                  child: Profile(
                      userId: state.params['userid']!,
                      username: state.params['username']!,
                      ),
                );
              }),
          GoRoute(
              name: MyAppRoutesConstants.aboutRouteName,
              path: "/about",
              pageBuilder: (context, state) {
                return const MaterialPage(
                  child: About(),
                );
              }),
          GoRoute(
              name: MyAppRoutesConstants.contactUsRouteName,
              path: "/contact_us",
              pageBuilder: (context, state) {
                return const MaterialPage(
                  child: ContactUs(),
                );
              }),
        ],
        errorPageBuilder: (context, state) =>
            const MaterialPage(child: ErrorPage()),
        redirect: (context, state) {
          if (!isAuth &&
              state.location
                  .startsWith('/${MyAppRoutesConstants.profileRouteName}')) {
            return context
                .namedLocation(MyAppRoutesConstants.contactUsRouteName);
          } else {
            return null;
          }
        });
    return router;
  }
}
