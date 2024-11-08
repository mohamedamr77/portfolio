import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolioapp/core/extentions/screen_size.dart';
import 'package:portfolioapp/core/utils/app_color.dart';
import 'package:portfolioapp/feature/dashboard/preseantation/view_model/dashboard_controller/dashboard_state.dart';
import '../../../../data/model/certificate_list.dart';
import '../../../view_model/dashboard_controller/dashboard_cubit.dart';
import 'carousel_slider_item.dart';

class CustomCarouselSlider extends StatelessWidget {
  const CustomCarouselSlider({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<DashboardCubit>(context);
    return BlocBuilder<DashboardCubit, DashboardState>(
      builder: (context, state) {
        return Column(
          children: [
            CarouselSlider.builder(
              itemCount: certificateList.length,
              itemBuilder:
                  (BuildContext context, int itemIndex, int pageViewIndex) =>
                  CarouselSliderItem(itemIndex: itemIndex, certificateModel: certificateList[itemIndex],),
              options: CarouselOptions(
                autoPlayCurve: Curves.fastOutSlowIn,
                autoPlay: true,
                viewportFraction: 0.45,
                aspectRatio: 1087 / 300,
                initialPage: 0,
                onPageChanged: (value, v) {
                  BlocProvider.of<DashboardCubit>(context).updateCurrentImageSliderImage(value);
                },
                enlargeFactor: 0.1,
              ),
            ),
            0.015.ph,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                certificateList.length,
                (index) {
                  return Container(
                    margin: const EdgeInsets.all(3),
                    height: 0.015.h,
                    width: index == cubit.currentImageSliderImage
                        ? 0.05.w
                        : 0.02.w,
                    decoration: BoxDecoration(
                      color: index == cubit.currentImageSliderImage
                          ? AppSharedColors.accentOrange
                          : AppSharedColors.mediumGray,
                      borderRadius: BorderRadius.circular(0.1.w),
                    ),
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }
}