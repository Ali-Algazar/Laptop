import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styel.dart';

class AddCartButtom extends StatelessWidget {
  const AddCartButtom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Text(
          'Add to cart',
          style: AppTextStyel.textStyle16.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
