import 'package:flutter/material.dart';
import 'package:personal_portfolio/common/common.dart';
import 'package:personal_portfolio/core/lang/lang.dart';
import 'package:personal_portfolio/routes/routes.dart';

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
              LocaleKeys.not_found.tr(),
            ),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
              onPressed: () {
                RouteApp.routemaster.push(HOME);
              },
              child: Text(LocaleKeys.home.tr()),
            ),
          ],
        ),
      ),
    );
  }
}
