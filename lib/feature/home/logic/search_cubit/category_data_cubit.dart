import 'package:bloc/bloc.dart';
import 'package:fashion/core/networking/api_error_model.dart';
import 'package:fashion/feature/home/data/repo/category_data_repo.dart';
import 'category_data_state.dart';

class CategoryDataCubit extends Cubit<CategoryDataState> {
  final CategoryDataRepo _repository;

  CategoryDataCubit(this._repository)
    : super(const CategoryDataState.initial());

  Future<void> searchVideos(String keyword) async {
    emit(const CategoryDataState.loading());
    try {
      final data = await _repository.getCategoryData(keyword);
      emit(CategoryDataState.success(data));
    } on ApiErrorModel catch (e) {
      emit(CategoryDataState.error(e.message));
    } catch (e) {
      emit(CategoryDataState.error('Unknown error: $e'));
    }
  }
}
