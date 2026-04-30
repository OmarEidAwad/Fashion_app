
import 'package:dio/dio.dart';
import 'package:fashion/core/networking/api_service.dart';
import 'package:fashion/core/networking/dio_factory.dart';
import 'package:fashion/feature/home/data/repo/category_data_repo.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
Future<void> setupGetIt()async{
  
 
Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<Dio>(() => dio);
   getIt.registerLazySingleton<ApiService>(() => ApiService(dio));
    debugPrint('Dio and ApiService registered');
  
  getIt.registerLazySingleton<CategoryDataRepo>(() => CategoryDataRepo());
   

} 