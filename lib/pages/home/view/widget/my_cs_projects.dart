import 'package:flutter/material.dart';
import 'package:personal_portfolio/common/project_item.dart';
import 'package:personal_portfolio/core/lang/lang.dart';
import 'package:personal_portfolio/gen/assets.gen.dart';

class MyCSProjects extends StatelessWidget {
  const MyCSProjects({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProjectItem(
          title: 'AliraHealth: MyReco',
          content:
              'This project aims to provide a personalized experience for Patients going through Clinical Studies.\nIt was developed during my experience in AliraHealth.\nIt was composed of a couple of Frontends in Flutter and a microservices architecture on the backend.',
          style: ProjectItemStyle.primary,
          contentWidget: Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  Assets.projects.myreco.path,
                ),
              ),
            ),
          ),
          chips: [
            LocaleKeys.chip_flutter.tr(),
            LocaleKeys.chip_go.tr(),
            LocaleKeys.chip_graphQL.tr(),
            LocaleKeys.chip_gRPC.tr(),
          ],
        ),
        ProjectItem(
          title: 'StarTy app',
          content:
              'Crowdfunding platform dedicated to investments in startups and companies through cryptocurrencies and blockchain.\nI took care of building the frontend application using Flutter.\nWe used Firebase functions to interact with blockchain contracts.',
          style: ProjectItemStyle.primary,
          contentWidget: Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  Assets.projects.starty.path,
                ),
              ),
            ),
          ),
          chips: [
            LocaleKeys.chip_flutter.tr(),
            LocaleKeys.chip_firebase.tr(),
          ],
        ),
      ],
    );
  }
}
