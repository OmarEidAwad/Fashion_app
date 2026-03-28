import 'package:fashion/feature/home/data/models/models_model.dart';

class ModelDetailsModel {
  int currentListIndex;
  List<ModelsModel> allModelsModel;

  ModelDetailsModel({
    required this.allModelsModel,
    required this.currentListIndex,
  });
}
