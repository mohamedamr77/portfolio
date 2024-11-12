import 'package:flutter/material.dart';
import '../../../../../../core/shared_widget/global_text.dart';
import '../../../../../../core/utils/app_color.dart';
import '../../../../../../core/utils/image_service.dart';
import '../../../../data/model/service_model.dart';

class ServiceItemListBody extends StatefulWidget {
  const ServiceItemListBody({
    super.key,
    required this.serviceModel,
    required this.margin,
  });

  final ServiceModel serviceModel;
  final EdgeInsetsGeometry? margin;

  @override
  _ServiceItemListBodyState createState() => _ServiceItemListBodyState();
}

class _ServiceItemListBodyState extends State<ServiceItemListBody> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        margin: widget.margin,
        padding:
            EdgeInsets.symmetric(horizontal: 18, vertical: _isHovered ? 30 : 0),
        // width: _isHovered ? 300 : 250, // Adjust width based on hover
        decoration: BoxDecoration(
          color: AppSharedColors.lightGray,
          borderRadius: BorderRadius.circular(14),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 40),
            imageService(image: widget.serviceModel.image),
            const SizedBox(height: 20),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: GText(
                color: Colors.black,
                content: widget.serviceModel.title,
                fontSize: 32,
                fontWeight: FontWeight.w600,
              ),
            ),
            GText(
              color: Colors.black,
              content: widget.serviceModel.description,
              fontSize: 19,
              fontWeight: FontWeight.w400,
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
