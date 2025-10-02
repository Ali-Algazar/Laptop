import 'package:flutter/material.dart';
import 'home_view_app_bar.dart';
import 'home_view_body_bloc_builder.dart';
import 'search_text_field.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              spacing: 15,
              children: [
                SizedBox(),
                HomeViewAppBar(),
                SearchTextField(),
                SizedBox(),
              ],
            ),
          ),
          HomeViewBodyBlocBuilder(),
        ],
      ),
    );
  }
}
