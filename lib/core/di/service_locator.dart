import 'package:get_it/get_it.dart';
import '../network/api_service.dart';
import '../../features/home/data/datasources/laptops_remote_data_source.dart';
import '../../features/home/data/repositories/laptop_repository_imple.dart';

final sl = GetIt.instance;
Future<void> initServiceLocator() async {
  // تسجّل DioHelper كمُفرد (singleton)

  sl.registerLazySingleton<LaptopsRemoteDataSourceImpl>(
    () => LaptopsRemoteDataSourceImpl(ApiService()),
  );
  sl.registerLazySingleton<LaptopRepositoryImple>(
    () => LaptopRepositoryImple(
      laptopsRemoteDataSource: sl<LaptopsRemoteDataSourceImpl>(),
    ),
  );
}
