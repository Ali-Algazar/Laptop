import 'package:flutter/material.dart';
import '../../domain/entities/laptop_entites.dart';
import '../widgets/laptop_detail_view_body.dart';

class LaptopDetailView extends StatelessWidget {
  const LaptopDetailView({super.key, required this.laptopEntites});
  static const routeName = '/laptop-detail';
  final LaptopEntites laptopEntites;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,

        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.share_sharp)),
        ],
      ),
      body: LaptopDetailViewBody(laptopEntites: laptopEntites),
    );
  }
}
