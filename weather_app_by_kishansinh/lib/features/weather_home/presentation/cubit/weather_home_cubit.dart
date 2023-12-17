import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'weather_home_state.dart';

class WeatherHomeCubit extends Cubit<WeatherHomeState> {
  WeatherHomeCubit() : super(WeatherHomeInitial());
}
