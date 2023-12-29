import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      home: const HomePage(),
    );
  }
}
