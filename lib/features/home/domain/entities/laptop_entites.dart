class LaptopEntites {
  final String status;
  final String title;
  final String description;
  final String price;
  final String image;
  final String company;
  final List images;
  final int sales;
  final int countInStock;

  LaptopEntites(
    this.countInStock, {
    required this.title,
    required this.status,
    required this.description,
    required this.price,
    required this.image,
    required this.company,
    required this.images,
    required this.sales,
  });
}
