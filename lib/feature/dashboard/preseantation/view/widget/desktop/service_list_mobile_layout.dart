import 'package:flutter/material.dart';
import 'package:portfolioapp/core/extentions/screen_size.dart';
import 'package:portfolioapp/feature/dashboard/preseantation/view/widget/services_section/service_item_list_body.dart';

import '../../../../data/model/service_list.dart';
import '../../../../data/model/service_model.dart';

class ServiceListMobileLayout extends StatelessWidget {
  const ServiceListMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    // Split the servicesList into two lists
    final List<ServiceModel> firstHalf = servicesList.sublist(0, servicesList.length ~/ 2);
    final List<ServiceModel> secondHalf = servicesList.sublist(servicesList.length ~/ 2);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.1.w),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              firstHalf.length,
                  (index) {
                return Expanded(
                  child: ServiceItemListBody(
                    serviceModel: firstHalf[index],
                    margin: index != firstHalf.length - 1
                        ? const EdgeInsets.only(right: 16)
                        : EdgeInsets.zero,
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              secondHalf.length,
                  (index) {
                return Expanded(
                  child: ServiceItemListBody(
                    serviceModel: secondHalf[index],
                    margin: index != secondHalf.length - 1
                        ? const EdgeInsets.only(right: 16)
                        : EdgeInsets.zero,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}