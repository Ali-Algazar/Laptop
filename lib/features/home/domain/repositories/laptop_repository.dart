import 'package:dartz/dartz.dart';
import '../../../../core/Failure/Failure.dart';
import '../entities/laptop_entites.dart';

abstract class LaptopRepository {
  Future<Either<Failure, List<LaptopEntites>>> getAllLapTop();
}
