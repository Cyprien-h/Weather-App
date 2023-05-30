import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'search_city_screen.dart';
import 'city_list_screen.dart';
import 'city_bloc.dart';
import 'navigation_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App',
      theme: ThemeData(
        primarySwatch: Colors.green,
        appBarTheme: AppBarTheme(
            backgroundColor: Color.fromRGBO(249, 249, 249, 1),
        ),
      ),
      home: BlocProvider<CityBloc>(
        create: (context) => CityBloc(),
        child: NavigationScreen(),
      ),
    );
  }
}
