import 'package:flutter/material.dart';

import '../../../../data/model/my_project_list.dart';
import 'my_project_item.dart';

class CustomListViewMyProject extends StatelessWidget {
  const CustomListViewMyProject({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView.separated(
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return  MyProjectItem(
            index: index,
            myProjectModel: myProjectList[index],
          );
        }, separatorBuilder: (context, index) => const SizedBox(height: 20,), itemCount: myProjectList.length);
  }
}
