import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_integration_examples/projects/routes/app_route_const.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          const Center(child: Text('Home')),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                GoRouter.of(context)
                    .pushNamed(MyAppRoutesConstants.profileRouteName,params: {
                      'name':'Sangmesh Mallad',
                      'userId':'10002'
                    });
              },
              child: const Text('Profile')),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                GoRouter.of(context)
                    .pushNamed(MyAppRoutesConstants.contactUsRouteName);
              },
              child: const Text('ContactUs')),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                GoRouter.of(context)
                    .pushNamed(MyAppRoutesConstants.aboutRouteName);
              },
              child: const Text('About')),
        ],
      ),
    );
  }
}
