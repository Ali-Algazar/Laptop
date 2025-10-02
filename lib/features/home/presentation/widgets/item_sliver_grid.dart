import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../domain/entities/laptop_entites.dart';
import 'laptop_product_item.dart';

class ItemSliverGrid extends StatelessWidget {
  const ItemSliverGrid({super.key, required this.lapTopList});
  final List<LaptopEntites> lapTopList;

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      itemCount: lapTopList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 15.h,
        crossAxisSpacing: 15.w,
        childAspectRatio: 0.650,
      ),
      itemBuilder: (context, index) =>
          LaptopProductItem(laptopEntites: lapTopList[index]),
    );
  }
}
