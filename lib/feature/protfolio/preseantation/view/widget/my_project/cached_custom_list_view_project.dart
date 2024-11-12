import 'package:flutter/material.dart';
import 'package:portfolioapp/feature/protfolio/preseantation/view/widget/my_project/custom_list_view_my_project.dart';

class CachedCustomListViewProject extends StatefulWidget {
  const CachedCustomListViewProject({super.key});

  @override
  State<CachedCustomListViewProject> createState() => _CachedCustomListViewProjectState();
}

class _CachedCustomListViewProjectState extends State<CachedCustomListViewProject> with AutomaticKeepAliveClientMixin {
@override
Widget build(BuildContext context) {
  super.build(context);
  return const CustomListViewMyProject();
}

@override
bool get wantKeepAlive => true;
}
