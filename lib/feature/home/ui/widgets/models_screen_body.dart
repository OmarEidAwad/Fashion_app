import 'package:fashion/core/helpers/spacing.dart';
import 'package:fashion/core/routing/app_router.dart';
import 'package:fashion/feature/home/data/models/moddel_details_model.dart';
import 'package:fashion/feature/home/data/models/models_model.dart';
import 'package:fashion/feature/home/logic/search_cubit/category_data_cubit.dart';
import 'package:fashion/feature/home/logic/search_cubit/category_data_state.dart';
import 'package:fashion/feature/home/ui/widgets/filter_bar.dart';
import 'package:fashion/feature/home/ui/widgets/single_Product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:go_router/go_router.dart';

class ModelsScreenBody extends StatefulWidget {
  const ModelsScreenBody({super.key, required this.categoryId});
  final String categoryId;
  @override
  State<ModelsScreenBody> createState() => _ModelsScreenBodyState();
}

class _ModelsScreenBodyState extends State<ModelsScreenBody> {
  @override
  List<bool> favoriteStatus = [];
  void initState() {
    super.initState();
    favoriteStatus = List.generate(modelsList.length, (index) => false);
  }

  List<ModelsModel> modelsList = [
    ModelsModel(
      imageAsset: "assets/images/models/model1.png",
      price: " \$30",
      name: "Gray coat and white T-sh..",
    ),
    ModelsModel(
      imageAsset: "assets/images/models/model2.png",
      price: " \$25",
      name: "top man Black",
    ),
    ModelsModel(
      imageAsset: "assets/images/models/model3.png",
      price: " \$50",
      name: "top man Black with trouser..",
    ),
    ModelsModel(
      imageAsset: "assets/images/models/model4.png",
      price: " \$40",
      name: "Classic Tailored Fit Men's Dress Shirt",
    ),
    ModelsModel(
      imageAsset: "assets/images/models/model1.png",
      price: " \$30",
      name: "Gray coat and white T-sh..",
    ),
    ModelsModel(
      imageAsset: "assets/images/models/model2.png",
      price: " \$25",
      name: "top man Black",
    ),
    ModelsModel(
      imageAsset: "assets/images/models/model3.png",
      price: " \$50",
      name: "top man Black with trouser..",
    ),
    ModelsModel(
      imageAsset: "assets/images/models/model4.png",
      price: " \$40",
      name: "Classic Tailored Fit Men's Dress Shirt",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryDataCubit, CategoryDataState>(
      builder: (context, state) {
        return state.maybeWhen(
          initial: () => const Center(child: Text('wait a second')),
          loading: () => const Center(
            child: CircularProgressIndicator(color: Colors.blue),
          ),
          error: (message) => Center(child: Text('Error: $message')),
          success: (data) {
            return Column(
              children: [
                FilterBar(),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: GridView.builder(
                      physics: BouncingScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 0.6,
                          ),
                      itemCount: modelsList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  context.pushNamed(
                                    AppRoute.modelsDetails,
                                    extra: ModelDetailsModel(
                                      allModelsModel: modelsList,
                                      currentListIndex: index,
                                    ),
                                  );
                                },
                                child: singleProduct(
                                  modelDetails: modelsList[index],
                                ),
                              ),
                            ),
                            verticalSpace(4),
                            Text(
                              "    ${modelsList[index].name}",
                              maxLines: 1,

                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.start,
                            ),
                            verticalSpace(2),
                            Row(
                              children: [
                                Text("   ${modelsList[index].price}"),
                                Spacer(),
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      favoriteStatus[index] =
                                          !favoriteStatus[index];
                                    });
                                  },
                                  icon: favoriteStatus[index]
                                      ? Icon(Icons.favorite, color: Colors.red)
                                      : Icon(Icons.favorite_border_outlined),
                                ),
                              ],
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ),
              ],
            );
          },
          orElse: () {
            return Container();
          },
        );
      },
    );
  }
}
