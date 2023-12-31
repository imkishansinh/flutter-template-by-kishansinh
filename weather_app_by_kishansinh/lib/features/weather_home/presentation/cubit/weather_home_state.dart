part of 'weather_home_cubit.dart';

abstract class WeatherHomeState extends Equatable {
  const WeatherHomeState();

  @override
  List<Object> get props => [];
}

class WeatherHomeInitial extends WeatherHomeState {}

class WeatherLoading extends WeatherHomeState {}

class WeatherLoaded extends WeatherHomeState {
  final RemoteWeatherData weather;

  const WeatherLoaded(this.weather);

  @override
  List<Object> get props => [weather];
}

class WeatherError extends WeatherHomeState {
  final String message;

  const WeatherError(this.message);

  @override
  List<Object> get props => [message];
}
