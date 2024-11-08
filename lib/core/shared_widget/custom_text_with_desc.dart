import 'package:flutter/material.dart';

import 'global_text.dart';

class CustomTitleWithDescription extends StatelessWidget {
  const CustomTitleWithDescription(
      {super.key, required this.title, required this.description});
  final String title;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GText(content: title, fontSize: 65, fontWeight: FontWeight.w600),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.6,
          child: GText(
              textAlign: TextAlign.center,
              content: description,
              fontSize: 21,
              fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}
