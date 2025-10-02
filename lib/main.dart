import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/di/service_locator.dart';
import 'core/function/on_generate_route.dart';
import 'features/home/data/repositories/laptop_repository_imple.dart';
import 'features/home/presentation/cubit/lap_top_cubit.dart';

void main() async {
  await initServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          LapTopCubit(sl<LaptopRepositoryImple>())..getLaptop(),
      child: ScreenUtilInit(
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) => MaterialApp(
          onGenerateRoute: AppRoute.route,
          theme: ThemeData(fontFamily: 'Inter', useMaterial3: true),
          debugShowCheckedModeBanner: false,
        ),
      ),
    );
  }
}
