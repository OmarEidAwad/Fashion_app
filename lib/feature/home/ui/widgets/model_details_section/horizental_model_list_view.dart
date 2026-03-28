import 'package:fashion/core/routing/app_router.dart';
import 'package:fashion/feature/home/data/models/moddel_details_model.dart';
import 'package:fashion/feature/home/ui/widgets/model_details_section/custom_show_modal_bottom_sheet.dart';
import 'package:fashion/feature/home/ui/widgets/single_Product.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HorizentalModelListView extends StatelessWidget {
  const HorizentalModelListView({super.key, required this.widget});

  final customShowModalBottomSheet widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      height: 175,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemCount: widget.allModels.allModelsModel.length,
        itemBuilder: (BuildContext context, int index) {
          return SizedBox(
            height: 150,
            width: 130,
            child: GestureDetector(
              onTap: () {
         context.pushNamed(AppRoute.modelsDetails, extra: ModelDetailsModel(allModelsModel: widget.allModels.allModelsModel, currentListIndex: index));
              },
              child: singleProduct(
                modelDetails: widget.allModels.allModelsModel[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
