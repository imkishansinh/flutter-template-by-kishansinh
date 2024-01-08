import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app_by_kishansinh/features/weather_home/presentation/widgets/current_weather_details_widget.dart';

Widget currentWeatherDetailsWidget() => MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.purple,
        fontFamily: GoogleFonts.roboto().fontFamily,
      ),
      home: const Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 21),
                child: CurrentWeatherDetailsWidget(
                  humanDate: 'Now',
                  temp: 28,
                  iconUrl:
                      'https://openweathermap.org/img/wn/10d@2x.png?apiid=',
                  tempMax: 29,
                  tempMin: 19,
                  feelsLike: 28,
                  main: 'Smoke',
                ),
              ),
            ),
          ],
        ),
      ),
    );
