import 'package:fashion/feature/home/data/models/moddel_details_model.dart';
import 'package:fashion/feature/home/ui/widgets/custom_app_bar.dart';
import 'package:fashion/feature/home/ui/widgets/filter_bar.dart';
import 'package:fashion/feature/home/ui/widgets/model_details_section/custom_show_modal_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ModelDetailesScreen extends StatefulWidget {
  const ModelDetailesScreen({super.key, required this.modelDetailsModel});
  final ModelDetailsModel modelDetailsModel;

  @override
  State<ModelDetailesScreen> createState() => _ModelDetailesScreenState();
}

class _ModelDetailesScreenState extends State<ModelDetailesScreen> {
  late PageController pageController;
  int currentPageIndex = 0;
  @override
  void initState() {
    currentPageIndex = widget.modelDetailsModel.currentListIndex;
    super.initState();
    pageController = PageController(
      initialPage: currentPageIndex,
      viewportFraction: .55,
    );
  }

  double sheetSize = 0.18;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: CustomAppBar(title: "Men"),
      ),

      body: Stack(
        children: [
          Column(
            children: [
              FilterBar(),
              AnimatedContainer(
                duration: Duration(milliseconds: 100),

                color: Color.fromARGB(255, 241, 239, 239),
                width: double.infinity,
                height: 600.h * (1 - (sheetSize - 0.05)),
                child: PageView.builder(
                  controller: pageController,
                  itemCount: widget.modelDetailsModel.allModelsModel.length,
                  onPageChanged: (index) {
                    setState(() {
                      currentPageIndex = index;
                    });
                  },
                  itemBuilder: (context, index) {
                    final scale = index == currentPageIndex ? 1.0 : 0.80;

                    return Transform.scale(
                      scale: scale,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.w),
                        child: Stack(
                          children: [
                            Positioned(
                              left: 20,
                              right: 0,
                              top: 500.h * (1 - (sheetSize - 0.05)),
                              child: Image.asset("assets/images/shadow.png"),
                            ),
                            Positioned.fill(
                              child: Image.asset(
                                widget
                                    .modelDetailsModel
                                    .allModelsModel[index]
                                    .imageAsset,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
          NotificationListener<DraggableScrollableNotification>(
            onNotification: (notification) {
              setState(() {
                sheetSize = notification.extent;
              });
              return true;
            },
            child: DraggableScrollableSheet(
              initialChildSize: .18,
              minChildSize: 0.05,
              maxChildSize: 0.8,
              builder: (context, scrollController) {
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.white,

                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(22),
                      topRight: Radius.circular(22),
                    ),
                  ),
                  child: customShowModalBottomSheet(
                    scrollController: scrollController,
                    allModels: ModelDetailsModel(
                      allModelsModel: widget.modelDetailsModel.allModelsModel,
                      currentListIndex: currentPageIndex,
                    ),
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
