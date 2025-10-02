import 'package:flutter/material.dart';
import '../../../../core/theme/app_text_styel.dart';
import '../../domain/entities/laptop_entites.dart';

class StatusContainer extends StatelessWidget {
  const StatusContainer({super.key, required this.laptopEntites});

  final LaptopEntites laptopEntites;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
      decoration: BoxDecoration(
        color: const Color(0xffE8EDF2),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        laptopEntites.status,
        style: AppTextStyel.textStyle14.copyWith(
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
      ),
    );
  }
}
