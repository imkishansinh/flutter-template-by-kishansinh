import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class ForecastItem extends StatelessWidget {
  final double temp;
  final String icon;
  final String humandDate;

  const ForecastItem({
    super.key,
    required this.temp,
    required this.icon,
    required this.humandDate,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            '$temp°',
            style: Theme.of(context)
                .textTheme
                .titleSmall
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 46,
            height: 46,
            child: Image.network(
              'https://openweathermap.org/img/wn/$icon@2x.png?apiid=${dotenv.env['WEATHER_API_KEY']}}',
            ),
          ),
          Text(
            humandDate,
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ],
      ),
    );
  }
}
