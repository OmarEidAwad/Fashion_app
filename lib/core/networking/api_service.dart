import 'package:dio/dio.dart';
import 'package:fashion/feature/home/data/models/category_data.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: "https://apidojo-hm-hennes-mauritz-v1.p.rapidapi.com")
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

    @GET(
      "/products/v2/list?country=us&lang=en&page=1&pageSize=30&sort=RELEVANCE",
    )
    Future<CategoryData> getCategoryData(  @Query("categoryId") String text,);

  
}
