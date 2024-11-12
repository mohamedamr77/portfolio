import 'package:flutter/material.dart';
import 'package:portfolioapp/core/utils/size_config.dart';

import '../../../../data/model/my_project_list.dart';
import 'my_project_item.dart';

class CustomGridViewMyProject extends StatelessWidget {
  const CustomGridViewMyProject({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: myProjectList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount(context), // Two items in one row
          crossAxisSpacing: MediaQuery.sizeOf(context).width *
              0.02, // Horizontal space between grid items
          mainAxisSpacing: MediaQuery.sizeOf(context).height * 0.04,
          childAspectRatio: childAspectRatio(
              context) // Aspect ratio for each grid item (width / height)
          ),
      itemBuilder: (context, index) {
        return MyProjectItem(
          index: index,
          myProjectModel: myProjectList[index],
        );
      },
    );
  }
}

int crossAxisCount(BuildContext context) {
  if (MediaQuery.sizeOf(context).width < SizeConfig.mobileSize) {
    return 1;
  } else if (MediaQuery.sizeOf(context).width < SizeConfig.tabletSize) {
    return 2;
  } else if (MediaQuery.sizeOf(context).width < SizeConfig.desktopSize) {
    return 3;
  } else {
    return 4;
  }
}

double childAspectRatio(BuildContext context) {
  if (MediaQuery.sizeOf(context).width < SizeConfig.mobileSize) {
    return 1.7;
  } else if (MediaQuery.sizeOf(context).width < SizeConfig.tabletSize &&
      MediaQuery.sizeOf(context).width > 684) {
    return 1.2;
  } else if (MediaQuery.sizeOf(context).width < SizeConfig.tabletSize &&
      (MediaQuery.sizeOf(context).width >= SizeConfig.mobileSize)) {
    return 1.04;
  } else if (MediaQuery.sizeOf(context).width < SizeConfig.desktopSize) {
    return 1.02;
  } else {
    return 1.01;
  }
}
