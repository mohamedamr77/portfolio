import 'package:flutter/material.dart';
import 'package:portfolioapp/core/extentions/screen_size.dart';
import 'package:portfolioapp/feature/dashboard/preseantation/view/widget/services_section/service_item_list_body.dart';

import '../../../../data/model/service_list.dart';

class ServiceList extends StatelessWidget {
  const ServiceList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.1.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          servicesList.length,
          (index) {
            return Expanded(
                child: ServiceItemListBody(
              serviceModel: servicesList[index],
              margin: index != servicesList.length - 1
                  ? const EdgeInsets.only(right: 16)
                  : EdgeInsets.zero,
            ));
          },
        ),
      ),
    );
  }
}
