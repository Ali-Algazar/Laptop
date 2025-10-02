import 'package:flutter/material.dart';
import '../../../../core/theme/app_text_styel.dart';

class HomeViewAppBar extends StatelessWidget {
  const HomeViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(),
        const Text('Laptops', style: AppTextStyel.textStyle18),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.shopping_cart_outlined),
        ),
      ],
    );
  }
}
