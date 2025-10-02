import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theme/app_text_styel.dart';
import '../../domain/entities/laptop_entites.dart';
import 'add_cart_button.dart';
import 'image_item_list_view.dart';
import 'status_container.dart';

class LaptopDetailViewBody extends StatelessWidget {
  const LaptopDetailViewBody({super.key, required this.laptopEntites});
  final LaptopEntites laptopEntites;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 12,
          children: [
            SizedBox(
              height: 231.h,
              child: ImageItemListView(laptopEntites: laptopEntites),
            ),

            Text(laptopEntites.title, style: AppTextStyel.textStyle22),

            Text(laptopEntites.company, style: AppTextStyel.textStyle14),

            StatusContainer(laptopEntites: laptopEntites),

            Text(laptopEntites.description, style: AppTextStyel.textStyle16),

            const Text('Price', style: AppTextStyel.textStyle18),
            Text('\$${laptopEntites.price}', style: AppTextStyel.textStyle22),
            const Text('Availability', style: AppTextStyel.textStyle18),
            Text(
              laptopEntites.countInStock == 0
                  ? 'Out of stock'
                  : '${laptopEntites.countInStock} in stock',
              style: AppTextStyel.textStyle16,
            ),
            const Text('Total Sales', style: AppTextStyel.textStyle18),
            Text(
              '${laptopEntites.sales} units sold',
              style: AppTextStyel.textStyle16,
            ),
            const SizedBox(),
            const AddCartButtom(),
            const SizedBox(),
          ],
        ),
      ),
    );
  }
}
