import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubit/lap_top_cubit.dart';
import 'item_sliver_grid.dart';
import 'shimmer_grid_view.dart';

class HomeViewBodyBlocBuilder extends StatelessWidget {
  const HomeViewBodyBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LapTopCubit, LapTopState>(
      builder: (context, state) {
        if (state is LapTopLoading) {
          return const ShimmerGridView();
        } else if (state is LapTopLoaded) {
          return ItemSliverGrid(lapTopList: state.lapTopList);
        } else {
          return const SliverToBoxAdapter();
        }
      },
    );
  }
}
