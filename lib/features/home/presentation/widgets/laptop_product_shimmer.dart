import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theme/app_text_styel.dart';
import 'package:shimmer/shimmer.dart';

class LaptopProductShimmer extends StatelessWidget {
  const LaptopProductShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            child: Container(
              height: 231.h,
              width: 173.w,
              decoration: const BoxDecoration(color: Colors.amber),
            ),
          ),
          SizedBox(height: 12.h),
          Text(
            'TechPro X15',
            style: AppTextStyel.textStyle16.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          const Text('\$1299', style: AppTextStyel.textStyle14),
          const Text('New', style: AppTextStyel.textStyle14),
        ],
      ),
    );
  }
}
