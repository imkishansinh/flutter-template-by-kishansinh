import 'package:flutter/material.dart';
import 'package:weather_app_by_kishansinh/features/weather_home/presentation/widgets/current_weather_details_widget.dart';

Widget currentWeatherDetailsWidget() => const CurrentWeatherDetailsWidget(
      humanDate: 'Now',
      temp: 28,
      iconUrl:
          'https://openweathermap.org/img/wn/10d@2x.png?apiid=1b621b7b5aad7d157e415fdb49953fa9',
      tempMax: 29,
      tempMin: 19,
      feelsLike: 28,
      main: 'Smoke',
    );
