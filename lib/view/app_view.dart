import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../cubits/counter_cubit.dart';
import 'home_screen.dart';

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(392.72727272727275, 781.0909090909091),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: ((context, child) => BlocProvider(
              create: (BuildContext context) => CounterCubit(),
              child: MaterialApp(
                debugShowCheckedModeBanner: false,
                theme: ThemeData(),
                home: HomeScreen(),
              ),
            )));
  }
}
