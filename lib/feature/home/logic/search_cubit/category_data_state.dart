import 'package:fashion/feature/home/data/models/category_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_data_state.freezed.dart';

@freezed
class CategoryDataState with _$CategoryDataState {
  const factory CategoryDataState.initial() = CategoryDataInitial;
  const factory CategoryDataState.loading() = CategoryDataLoading;
  const factory CategoryDataState.success(CategoryData data) = CategoryDataSuccess;
  const factory CategoryDataState.error(String message) = CategoryDataError;
}
