import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theme/app_text_styel.dart';
import '../../domain/entities/laptop_entites.dart';
import '../views/laptop_detail_view.dart';

class LaptopProductItem extends StatelessWidget {
  const LaptopProductItem({super.key, required this.laptopEntites});
  final LaptopEntites laptopEntites;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                LaptopDetailView(laptopEntites: laptopEntites),
          ),
        );
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            child: Container(
              height: 231.h,
              width: 173.w,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(laptopEntites.image),
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          ),
          SizedBox(height: 12.h),
          Text(
            laptopEntites.title,
            style: AppTextStyel.textStyle16.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          Text('\$${laptopEntites.price}', style: AppTextStyel.textStyle14),
          Text(laptopEntites.status, style: AppTextStyel.textStyle14),
        ],
      ),
    );
  }
}
