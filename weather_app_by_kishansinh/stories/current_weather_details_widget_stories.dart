import 'package:flutter/material.dart';
import 'package:weather_app_by_kishansinh/features/weather_home/presentation/widgets/current_weather_details_widget.dart';

Widget currentWeatherDetailsWidget() => const CurrentWeatherDetailsWidget(
      humanDate: 'Now',
      temp: 28,
      iconUrl: 'https://openweathermap.org/img/wn/10d@2x.png?apiid=',
      tempMax: 29,
      tempMin: 19,
      feelsLike: 28,
      main: 'Smoke',
    );
