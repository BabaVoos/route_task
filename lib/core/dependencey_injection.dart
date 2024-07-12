import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:route_task/core/networking/dio_factory.dart';
import 'package:route_task/featuers/home/logic/home_cubit.dart';  
import '../featuers/home/data/repos/products_repo.dart';
import 'networking/api_service.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  Dio dio = DioFactory.getDio();
  getIt.registerSingleton<ApiService>(ApiService(dio));
  
  // Home
  getIt.registerLazySingleton<ProductsRepo>(() => ProductsRepo(getIt()));
  getIt.registerFactory<HomeCubit>(() => HomeCubit(getIt()));
}
