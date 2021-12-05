import 'package:flutter/material.dart';
import 'package:personal_portfolio/route/route.dart';

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({
    required this.route,
    Key? key,
  }) : super(key: key);

  final String route;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$route not found',
            ),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
              onPressed: () {
                RouteApp.routemaster.push('/home');
              },
              child: const Text('Home'),
            ),
          ],
        ),
      ),
    );
  }
}
