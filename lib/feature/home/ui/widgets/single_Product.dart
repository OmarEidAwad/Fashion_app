import 'package:fashion/feature/home/data/models/category_data.dart';
import 'package:fashion/feature/home/data/models/models_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class singleProduct extends StatelessWidget {
  const singleProduct({super.key, required this.modelDetails});

  final Product modelDetails;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 0,
          right: 0,
          top: 120.h,

          /// bottom: 0,
          child: Image.asset("assets/images/shadow.png"),
        ),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xffECECEC),
              borderRadius: BorderRadius.all(Radius.circular(4)),
            ),
            child: Image.network(
              modelDetails.modelImage ?? 'https://via.placeholder.com/150',
              // fit: BoxFit.contain,
            ),
          ),
        ),
      ],
    );
  }
}
