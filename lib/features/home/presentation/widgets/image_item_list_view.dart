import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../domain/entities/laptop_entites.dart';

class ImageItemListView extends StatelessWidget {
  const ImageItemListView({super.key, required this.laptopEntites});

  final LaptopEntites laptopEntites;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: laptopEntites.images.length - 1,
      itemBuilder: (context, index) => Container(
        margin: const EdgeInsets.only(right: 12),
        height: 231.h,
        width: 173.w,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(laptopEntites.images[index + 1]),
            fit: BoxFit.fitWidth,
          ),
        ),
      ),
    );
  }
}
