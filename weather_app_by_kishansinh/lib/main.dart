import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'app.dart';
import 'injections/get_it_injections.dart';

void main() async {
  // Load environment variables
  await dotenv.load(fileName: '.env');
  // Setup dependency injection
  setupDependencyInjection();

  runApp(const MyApp());
}
