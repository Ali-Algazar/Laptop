import 'package:flutter/material.dart';
import '../../features/home/presentation/views/home_view.dart';
import '../../features/home/presentation/views/laptop_detail_view.dart';

class AppRoute {
  static Route<dynamic> route(RouteSettings settings) {
    switch (settings.name) {
      case HomeView.routeName:
        return MaterialPageRoute(builder: (_) => const HomeView());
      case LaptopDetailView.routeName:
      // return MaterialPageRoute(builder: (_) => LaptopDetailView());
      default:
        return MaterialPageRoute(builder: (_) => Container());
    }
  }
}
