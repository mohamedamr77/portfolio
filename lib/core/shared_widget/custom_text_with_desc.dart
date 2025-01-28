import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolioapp/core/utils/font_size_responsize.dart';

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
        /*
          color: Theme.of(context).primaryColor,
              fontSize: getResponsiveFontSize(context: context, fontSize: 65),
              fontWeight: FontWeight.w600,
            fontFamily: "Poppins",
         */
        DefaultTextStyle(
          style:  TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: getResponsiveFontSize(context: context, fontSize: 65),
            fontWeight: FontWeight.w600,
            fontFamily: "Poppins",
          ),
          child: AnimatedTextKit(
            repeatForever: true,
            pause: const Duration(seconds: 3),
            animatedTexts: [
              TypewriterAnimatedText(title),

            ],
          ),
        ),
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
