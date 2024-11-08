import 'package:flutter/material.dart';
import 'package:portfolioapp/core/shared_widget/custom_text_with_desc.dart';
import 'package:portfolioapp/core/utils/app_text.dart';

import 'custom_carousel_slider.dart';

class CertificatesSection extends StatelessWidget {
  const CertificatesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
         CustomTitleWithDescription(title: AppText.certificates, description: AppText.descriptionCertificates),
        SizedBox(height: 30,),
        CustomCarouselSlider(),
      ],
    );
  }
}
