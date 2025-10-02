import '../../domain/entities/laptop_entites.dart';

class LaptopModel extends LaptopEntites {
  LaptopModel(
    super.countInStock, {
    required super.title,
    required super.status,
    required super.description,
    required super.price,
    required super.image,
    required super.company,
    required super.images,
    required super.sales,
  });
  factory LaptopModel.fromJson(Map<String, dynamic> json) {
    return LaptopModel(
      json['countInStock'],
      title: json['name'],
      status: json['status'],
      description: json['description'],
      price: json['price'].toString(),
      image: json['image'],
      company: json['company'],
      images: json['images'],
      sales: json['sales'],
    );
  }
}
