import 'package:flutter/material.dart';

import '../widgets/weather_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          'Home',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
      body: const Column(
        children: [
          WeatherCard(
            city: 'Ahmedabad',
            celceius: 32.01,
            shortDescription: 'Bla bla bla',
            weatherIconName: '50d',
          ),
          WeatherCard(
            city: 'Ahmedabad',
            celceius: 18.01,
            shortDescription: 'bla bla',
            weatherIconName: '50d',
          ),
          WeatherCard(
            city: 'Ahmedabad',
            celceius: 21.01,
            shortDescription: 'bla bla',
            weatherIconName: '50d',
          )
        ],
      ),
    );
  }
}
