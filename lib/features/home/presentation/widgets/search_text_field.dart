import 'package:flutter/material.dart';
import '../../../../core/theme/app_text_styel.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      enabled: false,
      decoration: InputDecoration(
        fillColor: const Color(0xffE8EDF2),
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
        prefixIcon: const Icon(Icons.search, color: Color(0xff4D7399)),
        hintText: 'Search  for laptops',
        hintStyle: AppTextStyel.textStyle16.copyWith(
          color: const Color(0xff4D7399),
        ),
      ),
    );
  }
}
