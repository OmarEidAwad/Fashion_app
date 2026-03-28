import 'package:fashion/core/helpers/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class FilterBar extends StatelessWidget {
  const FilterBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(thickness: .08, color: Colors.grey),
        SizedBox(
          height: 25.h,
          width: double.infinity,
          child: Row(
            children: [
              Text("   Sort by "),
              SvgPicture.asset("assets/svgs/select.svg"),
              Spacer(),
              SvgPicture.asset("assets/svgs/filter.svg"),
              horizontalSpace(8),
              Text(" Filter   "),
              SvgPicture.asset("assets/svgs/grid.svg"),
              horizontalSpace(8),
              SvgPicture.asset("assets/svgs/groups.svg",),
              horizontalSpace(8),
            ],
          ),
        ),
        Divider(thickness: .08, color: Colors.grey),
      ],
    );
  }
}
