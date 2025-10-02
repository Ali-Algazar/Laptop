import 'package:dartz/dartz.dart';
import '../../../../core/Failure/Failure.dart';
import '../datasources/laptops_remote_data_source.dart';
import '../../domain/entities/laptop_entites.dart';
import '../../domain/repositories/laptop_repository.dart';

class LaptopRepositoryImple extends LaptopRepository {
  final LaptopsRemoteDataSource laptopsRemoteDataSource;
  LaptopRepositoryImple({required this.laptopsRemoteDataSource});
  @override
  Future<Either<Failure, List<LaptopEntites>>> getAllLapTop() async {
    try {
      List<LaptopEntites> laptops = await laptopsRemoteDataSource
          .getAllLapTop();
      return Right(laptops);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
