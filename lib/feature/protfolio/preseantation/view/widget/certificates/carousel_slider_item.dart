import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../data/model/certificate_model.dart';
import '../../../view_model/dashboard_controller/dashboard_cubit.dart';

class CarouselSliderItem extends StatelessWidget {
  const CarouselSliderItem(
      {super.key, required this.itemIndex, required this.certificateModel});
  final int itemIndex;
  final CertificateModel certificateModel;

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<PortfolioCubit>(context);
    return Stack(
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image(image: AssetImage(certificateModel.imagePath))),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            boxShadow: itemIndex != cubit.currentImageSliderImage
                ? [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 1.0,
                    )
                  ]
                : null,
          ),
        )
      ],
    );
  }
}
