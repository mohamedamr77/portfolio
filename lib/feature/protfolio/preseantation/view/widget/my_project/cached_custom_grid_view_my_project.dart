import 'package:flutter/material.dart';
import 'custom_grid_view_my_project.dart';

class CachedCustomGridViewMyProject extends StatefulWidget {
  const CachedCustomGridViewMyProject({super.key});

  @override
  _CachedCustomGridViewMyProjectState createState() =>
      _CachedCustomGridViewMyProjectState();
}

class _CachedCustomGridViewMyProjectState extends State<CachedCustomGridViewMyProject> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return const CustomGridViewMyProject();
  }

  @override
  bool get wantKeepAlive => true;
}
