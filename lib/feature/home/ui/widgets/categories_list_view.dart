import 'package:fashion/core/helpers/spacing.dart';
import 'package:fashion/core/routing/app_router.dart';
import 'package:fashion/feature/home/data/models/categories_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key});

  @override
  Widget build(BuildContext context) {
    List<CategoriesModel> categoriesData = [
      CategoriesModel(
        imageAsset: "assets/images/category/Deals.png",
        categoryName: "Deals",
      ),
      CategoriesModel(
        imageAsset: "assets/images/category/Health.png",
        categoryName: "Health",
      ),
      CategoriesModel(
        imageAsset: "assets/images/category/Kids.png",
        categoryName: "Kids",
      ),
      CategoriesModel(
        imageAsset: "assets/images/category/Men.png",
        categoryName: "Men",
      ),
      CategoriesModel(
        imageAsset: "assets/images/category/Women.png",
        categoryName: "Women",
      ),
      CategoriesModel(
        imageAsset: "assets/images/category/Deals.png",
        categoryName: "Deals",
      ),
      CategoriesModel(
        imageAsset: "assets/images/category/Health.png",
        categoryName: "Health",
      ),
      CategoriesModel(
        imageAsset: "assets/images/category/Kids.png",
        categoryName: "Kids",
      ),
      CategoriesModel(
        imageAsset: "assets/images/category/Men.png",
        categoryName: "Men",
      ),
      CategoriesModel(
        imageAsset: "assets/images/category/Women.png",
        categoryName: "Women",
      ),
    ];

    return ListView.builder(
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      itemCount: categoriesData.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: GestureDetector(
            onTap: () {
              context.pushNamed(
                AppRoute.modelsScreen,
                extra: categoriesData[index].categoryName,
              );
            },
            child: Column(
              children: [
                CircleAvatar(
                  radius: 36,
                  backgroundImage: AssetImage(categoriesData[index].imageAsset),
                ),
                verticalSpace(8),
                Text(categoriesData[index].categoryName),
              ],
            ),
          ),
        );
      },
    );
  }
}
