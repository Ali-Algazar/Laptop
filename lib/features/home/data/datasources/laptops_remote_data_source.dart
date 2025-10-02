import '../../../../core/network/api_service.dart';
import '../models/laptop_model.dart';
import '../../domain/entities/laptop_entites.dart';

abstract class LaptopsRemoteDataSource {
  Future<List<LaptopEntites>> getAllLapTop();
}

class LaptopsRemoteDataSourceImpl extends LaptopsRemoteDataSource {
  final ApiService apiService;
  LaptopsRemoteDataSourceImpl(this.apiService);
  @override
  Future<List<LaptopEntites>> getAllLapTop() async {
    var response = await apiService.get(
      'https://elwekala.onrender.com/product/Laptops',
    );
    if (response.statusCode == 200) {
      var data = response.data['product'];
      List<LaptopEntites> laptops = [];
      for (var item in data) {
        laptops.add(LaptopModel.fromJson(item));
      }
      return laptops;
    } else {
      throw Exception();
    }
  }
}
