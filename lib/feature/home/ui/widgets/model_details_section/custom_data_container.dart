import 'package:fashion/core/helpers/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomDataContainer extends StatelessWidget {
  const CustomDataContainer({
    super.key,
    this.haveArrowIcon = true,
    this.haveText = false,
    required this.title,
    required this.IconName,
  });
  final String title;
  final bool haveArrowIcon;
  final bool haveText;
  final FaIconData IconName;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        height: 50.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),

          border: Border(
            left: BorderSide(color: Colors.black12),
            top: BorderSide(color: Colors.black12),
            right: BorderSide(color: Colors.black12),
            bottom: haveText == true
                ? BorderSide(color: Colors.black12)
                : BorderSide.none,
          ),
          shape: BoxShape.rectangle,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Row(
            children: [
              FaIcon(IconName, color: Colors.black, size: 18),

              Text(
                "  ${title}",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
              Spacer(),
              haveArrowIcon == true
                  ? IconButton(
                      onPressed: () {},
                      icon: FaIcon(
                        FontAwesomeIcons.angleDown,
                        color: Colors.black,
                        size: 20,
                      ),
                    )
                  : SizedBox(),
              horizontalSpace(8),
              haveText == true
                  ? Text(
                      "View return policy",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  : SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
