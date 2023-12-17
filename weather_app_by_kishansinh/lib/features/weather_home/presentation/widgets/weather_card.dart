import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class WeatherCard extends StatelessWidget {
  final String city;
  final num celceius;
  final String shortDescription;
  final String weatherIconName;

  const WeatherCard({
    required this.city,
    required this.celceius,
    required this.shortDescription,
    required this.weatherIconName,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 21),
        child: Row(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                city,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Text(
                '${celceius.toString()} °C',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Text(
                'Feels like ${celceius.toString()} °C',
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ],
          ),
          const Spacer(),
          Image.network(
              "https://openweathermap.org/img/wn/$weatherIconName@2x.png?apiid=${dotenv.env['WEATHER_API_KEY']}}"),
        ]),
      ),
    );
  }
}
