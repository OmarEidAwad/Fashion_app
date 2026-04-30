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
    context.read<CategoryDataCubit>().getCategoryData(widget.categoryId);
    super.initState();
  }

 

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
                      itemCount: data.plpList!.productList!.length,
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
                                      allModelsModel: data.plpList!.productList!,
                                      currentListIndex: index,
                                    ),
                                  );
                                },
                                child: singleProduct(
                                  modelDetails: data.plpList!.productList![index],
                                ),
                              ),
                            ),
                            verticalSpace(4),
                            Text(
                              "    ${data.plpList!.productList![index].productName}",
                              maxLines: 1,

                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.start,
                            ),
                            verticalSpace(2),
                            Row(
                              children: [
                                Text("   ${data.plpList!.productList![index].prices?.first.price.toString()?? 'N/A'} \$"),
                                Spacer(),
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      favoriteStatus[0] =
                                          !favoriteStatus[0];
                                    });
                                  },
                                  icon:
                                  // favoriteStatus[0]     
                                    //  ? Icon(Icons.favorite, color: Colors.red)
                                     // : 
                                      Icon(Icons.favorite_border_outlined),
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
