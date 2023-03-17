import 'package:flutter/material.dart';
import 'package:personal_portfolio/common/common.dart';
import 'package:personal_portfolio/pages/home/view/widget/my_cs_projects.dart';
import 'package:personal_portfolio/pages/home/view/widget/my_os_projects.dart';
import 'package:personal_portfolio/pages/home/view/widget/section.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: ScrollConfiguration.of(context).copyWith(
        scrollbars: false,
      ),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 16.0,
            horizontal: isSmall(context) ? 16.0 : 80.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Section(
                color: Theme.of(context).colorScheme.primary,
                title: 'Professional Projects',
                child: const MyCSProjects(),
              ),
              Section(
                color: Theme.of(context).colorScheme.tertiary,
                title: 'Open Source Projects',
                child: const MyOSProjects(),
              ),
              const SizedBox(
                height: 64,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
