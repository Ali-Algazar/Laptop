import 'package:dartz/dartz.dart';
import '../../../../core/Failure/Failure.dart';
import '../entities/laptop_entites.dart';
import '../repositories/laptop_repository.dart';

class GetLaptop {
  final LaptopRepository laptopRepository;

  GetLaptop({required this.laptopRepository});
  Future<Either<Failure, List<LaptopEntites>>> call() async =>
      await laptopRepository.getAllLapTop();
}
