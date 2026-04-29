import 'package:fashion/feature/home/data/models/categories_model.dart';
import 'package:fashion/feature/home/ui/widgets/custom_app_bar.dart';
import 'package:fashion/feature/home/ui/widgets/models_screen_body.dart';
import 'package:flutter/material.dart';

class ModelsScreen extends StatelessWidget {
  const ModelsScreen({super.key, required this.categoriesData});
  final CategoriesModel? categoriesData;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: CustomAppBar(title: categoriesData?.categoryName ?? ""),
        ),
        body: ModelsScreenBody(
          categoryId: categoriesData?.categoryId ?? "",
        ),
      ),
    );
  }
}
