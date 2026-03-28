import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomSelectionBar extends StatelessWidget {
  const CustomSelectionBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          border: Border.all(width: 0.7, color: Colors.black12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  "Select color",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                ),
                SvgPicture.asset("assets/svgs/select.svg"),
              ],
            ),

            Container(width: 2, height: 32, color: Colors.black12),

            Row(
              children: [
                Text(
                  "Select size",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                ),
                SvgPicture.asset("assets/svgs/select.svg"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
