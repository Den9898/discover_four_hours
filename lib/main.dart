import 'package:discover_four_hours/cubit/app_cubit.dart';
import 'package:discover_four_hours/cubit/app_cubit_logics.dart';
import 'package:discover_four_hours/pages/detali_page.dart';
import 'package:discover_four_hours/pages/home_page.dart';
import 'package:discover_four_hours/pages/navpages/main_page.dart';
import 'package:discover_four_hours/services/data_services.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.green),
      home: BlocProvider<AppCubit>(
        create: (context)=>AppCubit(
          data: DataServices(),
        ),
        child:AppCubitLogics() ,
      )
    );
  }
}
