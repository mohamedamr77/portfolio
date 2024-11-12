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
  double width = MediaQuery.sizeOf(context).width;

  //  400 and 470
  if (width <= 400) {
    return 1.29;

    // Width between 470 and 500
  } else if (width > 400 && width < 470) {
    return 1.4;
    // Width between 500 and mobile size (typically 500 to < 684)
  }

  else if (width >= 470 && width < SizeConfig.mobileSize) {
    return 1.7;

    // Width between 500 and mobile size (typically 500 to < 684)
  } else if (width < SizeConfig.mobileSize) {
    return 1.7;

    // Width between 684 and tablet size (usually up to 900)
  } else if (width < SizeConfig.tabletSize && width >= 684) {
    return 1.2;

    // Width between 600 and 684
  } else if (width < SizeConfig.tabletSize && width >= 600) {
    return 1.04;

    // Width between mobile size (500) and 600
  } else if (width < SizeConfig.tabletSize && width >= SizeConfig.mobileSize) {
    return 0.8;

    // Width between tablet size (900) and desktop size (typically 1200)
  } else if (width < SizeConfig.desktopSize) {
    return 1.02;

    // Width greater than or equal to desktop size (1200 and above)
  } else {
    return 1.01;
  }
}


