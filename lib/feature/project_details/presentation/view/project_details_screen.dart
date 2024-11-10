import 'package:flutter/material.dart';
import 'package:portfolioapp/feature/project_details/presentation/view/widgets/project_details_body.dart';

class ProjectDetailsScreen extends StatelessWidget {
  static const id = "/ProjectDetailsBody";
  const ProjectDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:  ProjectDetailsBody(),
    );
  }
}
