import 'package:dio/dio.dart';
import 'package:fashion/core/di/dependency_injection.dart';
import 'package:fashion/core/networking/api_error_model.dart';
import 'package:fashion/core/networking/api_service.dart';
import 'package:fashion/feature/home/data/models/category_data.dart';

class CategoryDataRepo {
  final ApiService _apiService = getIt<ApiService>();

  Future<CategoryData> getCategoryData(String categoryId) async {
    try {
      final response = await _apiService.getCategoryData(categoryId);
      return response;
    } on DioException catch (e) {
      throw ApiErrorModel(
        message:
            e.response?.data['message'] ?? 'An unexpected error occurred: $e',
        statusCode: e.response?.statusCode ?? 400,
      );
    } catch (e) {
      throw Exception('Failed to get images : $e');
    }
  }
}
