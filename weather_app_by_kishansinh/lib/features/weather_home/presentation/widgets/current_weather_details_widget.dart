import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class CurrentWeatherDetailsWidget extends StatelessWidget {
  final String humanDate;
  final double temp;
  final String icon;
  final double tempMax;
  final double tempMin;
  final double feelsLike;
  final String main;

  const CurrentWeatherDetailsWidget({
    super.key,
    required this.humanDate,
    required this.temp,
    required this.icon,
    required this.tempMax,
    required this.tempMin,
    required this.feelsLike,
    required this.main,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          humanDate,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              '$temp°',
              style: Theme.of(context)
                  .textTheme
                  .displayLarge
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 62,
              height: 62,
              child: Image.network(
                'https://openweathermap.org/img/wn/$icon@2x.png?apiid=${dotenv.env['WEATHER_API_KEY']}}',
              ),
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  main,
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                Text(
                  'Feels like $feelsLike°',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            ),
          ],
        ),
        Text(
          'High: $tempMax° · Low: $tempMin°',
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ],
    );
  }
}
