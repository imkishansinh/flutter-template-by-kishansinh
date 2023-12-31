import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app_by_kishansinh/features/weather_home/presentation/cubit/weather_home_cubit.dart';

import 'features/weather_home/presentation/pages/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: MediaQuery.of(context).platformBrightness,
        useMaterial3: true,
        colorSchemeSeed: Colors.purple,
        fontFamily: GoogleFonts.roboto().fontFamily,
      ),
      home: BlocProvider(
        create: (_) => WeatherHomeCubit(),
        child: const HomePage(),
      ),
    );
  }
}
