import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'laptop_product_shimmer.dart';

class ShimmerGridView extends StatelessWidget {
  const ShimmerGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      itemCount: 6,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 15.h,
        crossAxisSpacing: 15.w,
        childAspectRatio: 0.670,
      ),
      itemBuilder: (context, index) => const LaptopProductShimmer(),
    );
  }
}
