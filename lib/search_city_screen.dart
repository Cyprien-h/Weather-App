// file: search_city_screen.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'city_bloc.dart';

class SearchCityScreen extends StatefulWidget {
  @override
  _SearchCityScreenState createState() => _SearchCityScreenState();
}

class _SearchCityScreenState extends State<SearchCityScreen> {
  final cityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Ajouter une ville',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: cityController,
              decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromRGBO(216, 216, 216, 1.0),
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                labelText: "Saisissez le nom d'une ville",
                prefixIcon: IconButton(
                  icon: Icon(Icons.search),
                  color: Colors.blue,
                  onPressed: () {
                    context.read<CityBloc>().addCity(cityController.text);
                    Navigator.pushNamed(context, '/cityList');
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    cityController.dispose();
    super.dispose();
  }
}
