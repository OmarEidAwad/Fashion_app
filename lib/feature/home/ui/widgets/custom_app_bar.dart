import 'package:fashion/core/helpers/spacing.dart';
import 'package:fashion/core/theiming/font_weight_helper.dart';
import 'package:fashion/core/theiming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: Text(
        title,
        style: TextStyles.font18BlackBold.copyWith(
          fontWeight: FontWeightHelper.bold,
        ),
      ),
      centerTitle: true,
      actions: [
        Stack(
          children: [
            SvgPicture.asset("assets/svgs/cart.svg"),

            CircleAvatar(
              backgroundColor: Colors.red,
              radius: 6,
              child: Center(
                child: Text(
                  "5",
                  style: TextStyle(color: Colors.white, fontSize: 6),
                ),
              ),
            ),
          ],
        ),
        horizontalSpace(22),
      ],
      shadowColor: Colors.grey,
    );
  }
}
