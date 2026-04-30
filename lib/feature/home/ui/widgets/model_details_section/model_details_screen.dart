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
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
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

                  color: Color(0xffFAFAFC),
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
                      final scale = index == currentPageIndex ? 1.0 : 0.75;

                      return Transform.scale(
                        scale: scale,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.w),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                right: 0,
                                top: 500.h * (1 - (sheetSize - 0.05)),
                                child: Image.asset("assets/images/shadow.png",
                                    fit: BoxFit.contain),
                              ),
                              Positioned.fill(
                                child: Image.network(
                                  widget
                                          .modelDetailsModel
                                          .allModelsModel[index]
                                          .modelImage ??
                                      'https://via.placeholder.com/150',
                                  fit: BoxFit.cover,
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
                minChildSize: 0.06,
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
      ),
    );
  }
}
