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
        crossAxisCount:
            MediaQuery.sizeOf(context).width < SizeConfig.desktopSize
                ? 3
                : 4, // Two items in one row
        crossAxisSpacing: MediaQuery.sizeOf(context).width *
            0.02, // Horizontal space between grid items
        mainAxisSpacing: MediaQuery.sizeOf(context).height * 0.04,
        childAspectRatio:
            MediaQuery.sizeOf(context).width < SizeConfig.desktopSize
                ? 1.01
                : 0.95, // Aspect ratio for each grid item (width / height)
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
