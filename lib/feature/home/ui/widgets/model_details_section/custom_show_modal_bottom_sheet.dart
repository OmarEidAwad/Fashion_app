import 'package:fashion/core/helpers/spacing.dart';
import 'package:fashion/core/routing/app_router.dart';
import 'package:fashion/core/theiming/font_weight_helper.dart';
import 'package:fashion/core/theiming/styles.dart';
import 'package:fashion/feature/home/data/models/moddel_details_model.dart';
import 'package:fashion/feature/home/data/models/models_model.dart';
import 'package:fashion/feature/home/ui/widgets/model_details_section/custom_buy_button.dart';
import 'package:fashion/feature/home/ui/widgets/model_details_section/custom_data_container.dart';
import 'package:fashion/feature/home/ui/widgets/model_details_section/custom_selection_bar.dart';
import 'package:fashion/feature/home/ui/widgets/model_details_section/horizental_model_list_view.dart';
import 'package:fashion/feature/home/ui/widgets/models_screen_body.dart';
import 'package:fashion/feature/home/ui/widgets/single_Product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class customShowModalBottomSheet extends StatefulWidget {
  const customShowModalBottomSheet({
    super.key,
    required this.allModels,
    required this.scrollController,
  });
  final ModelDetailsModel allModels;
  final ScrollController scrollController;
  @override
  State<customShowModalBottomSheet> createState() =>
      _customShowModalBottomSheetState();
}

class _customShowModalBottomSheetState
    extends State<customShowModalBottomSheet> {
  bool favoriteStatus = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      controller: widget.scrollController,
      children: [
        Column(
          children: [
            verticalSpace(4),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xffD9D9D9),

                  borderRadius: BorderRadius.circular(12),
                ),
                width: 42.w,
                height: 5.h,
              ),
            ),
            verticalSpace(16),

            Text(
              widget
                  .allModels
                  .allModelsModel[widget.allModels.currentListIndex]
                  .productName?? 'N/A',
            ),
            verticalSpace(32),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Row(
                children: [
                  Text(
                    widget
                        .allModels
                        .allModelsModel[widget.allModels.currentListIndex]
                        .prices?.first.price.toString()?? 'N/A',
                    style: TextStyles.font16GreyBold.copyWith(
                      color: Colors.black,
                    ),
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        favoriteStatus = !favoriteStatus;
                      });
                    },
                    icon: favoriteStatus
                        ? Icon(Icons.favorite, color: Colors.red, size: 24)
                        : Icon(Icons.favorite_border_outlined, size: 24),
                  ),
                  horizontalSpace(4),
                  Text(
                    "450",
                    style: TextStyles.font16GreyBold.copyWith(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        CustomSelectionBar(),
        verticalSpace(20),
        CustomDataContainer(
          IconName: FontAwesomeIcons.cartShopping,
          title: "Free delivery",
          haveArrowIcon: favoriteStatus,
        ),
        CustomDataContainer(
          IconName: FontAwesomeIcons.truckFast,
          title: "free return",
          haveText: true,
          haveArrowIcon: false,
        ),
        verticalSpace(12),
                customBuyButton(),
        verticalSpace(12),

        Text(
          "       About Ptoduct",
          style: TextStyles.font14BlackMedium.copyWith(
            fontWeight: FontWeightHelper.bold,
          ),
        ),
        verticalSpace(12),
        CustomDataContainer(
          title: "Product details",
          IconName: FontAwesomeIcons.ellipsis,
        ),
        CustomDataContainer(IconName: FontAwesomeIcons.renren, title: "Brand"),
        CustomDataContainer(
          IconName: FontAwesomeIcons.bacon,
          title: "Size and fit",
        ),
        CustomDataContainer(
          IconName: FontAwesomeIcons.clockRotateLeft,
          title: "History",
        ),
        verticalSpace(6),
        Row(
          children: [
            Text(
              "    You might also like",
              style: TextStyles.font14BlackMedium,
            ),
            Spacer(),
            GestureDetector(
              onTap: () {
                context.pushNamed(AppRoute.modelsScreen);
              },
              child: Text(
                "View all       ",
                style: TextStyles.font14BlackMedium,
              ),
            ),
          ],
        ),
        verticalSpace(8),
        HorizentalModelListView(widget: widget),
        verticalSpace(8),
      ],
    );
  }
}
