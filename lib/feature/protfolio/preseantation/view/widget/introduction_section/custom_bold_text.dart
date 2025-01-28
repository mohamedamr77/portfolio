import 'package:flutter/material.dart';

import '../../../../../../core/shared_widget/global_text.dart';
import '../../../../../../core/utils/size_config.dart';

class CustomBoldText extends StatefulWidget {
  const CustomBoldText({super.key, required this.text});
  final String text;

  @override
  State<CustomBoldText> createState() => _CustomBoldTextState();
}

class _CustomBoldTextState extends State<CustomBoldText>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _opacityAnimation;

  @override
  void initState() {
    super.initState();

    // Initialize the animation controller
    _controller = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    )..repeat(reverse: true); // Repeat animation and reverse automatically

    // Define the opacity animation
    _opacityAnimation = Tween<double>(begin: 1, end: 0.7).animate(_controller);
  }

  @override
  void dispose() {
    // Dispose the controller to free up resources
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _opacityAnimation,
      builder: (context, child) {
        return Opacity(
          opacity: _opacityAnimation.value,
          child: FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.centerLeft,
            child: GText(
              content: widget.text,
              fontSize: MediaQuery.sizeOf(context).width > SizeConfig.tabletSize
                  ? 100
                  : 60,
              fontWeight: FontWeight.w700,
            ),
          ),
        );
      },
    );
  }
}