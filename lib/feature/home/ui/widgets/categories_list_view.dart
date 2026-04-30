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
        categoryName: "Sports",
        categoryId: "sportswear_women_activity_hiking_accessories",
      ),
      CategoriesModel(
        imageAsset: "assets/images/category/Health.png",
        categoryName: "Beauty",
        categoryId: "beauty_newarrivals_all",
      ),
      CategoriesModel(
        imageAsset: "assets/images/category/Kids.png",
        categoryName: "Kids",
        categoryId: "kids_baby_girl_newarrivals",
      ),
      CategoriesModel(
        imageAsset: "assets/images/category/Men.png",
        categoryName: "Men",
        categoryId: "men_newarrivals_all",
      ),
      CategoriesModel(
        imageAsset: "assets/images/category/Women.png",
        categoryName: "Women",
        categoryId: "ladies_newarrivals_all",
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
              // نضيف ال data from api
              
              context.pushNamed(
                AppRoute.modelsScreen,
                extra: categoriesData[index],
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
