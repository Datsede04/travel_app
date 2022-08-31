import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/Services/data_services.dart';
import 'package:travel_app/cubit/app_cubit.dart';
import 'package:travel_app/cubit/app_cubit_logic.dart';
import 'package:travel_app/pages/nav_pages/detail_pages.dart';
import 'package:travel_app/pages/nav_pages/main_page.dart';
import 'package:travel_app/pages/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: BlocProvider<AppCubits>(
          create: (context) => AppCubits(data: DataServer()),
          child: const AppCubitLogic(),
        ));
  }
}
