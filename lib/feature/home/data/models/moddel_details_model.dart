import 'package:fashion/feature/home/data/models/category_data.dart';
import 'package:fashion/feature/home/data/models/models_model.dart';

class ModelDetailsModel {
  int currentListIndex;
  List<Product> allModelsModel;

  ModelDetailsModel({
    required this.allModelsModel,
    required this.currentListIndex,
  });
}
