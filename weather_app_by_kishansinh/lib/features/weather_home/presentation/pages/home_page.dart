import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:weather_app_by_kishansinh/features/weather_home/presentation/cubit/weather_home_cubit.dart';
import '../widgets/current_weather_details_widget.dart';
import '../widgets/forecast_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () {
          return Future.value();
        },
        child: BlocConsumer(
          bloc: GetIt.I<WeatherHomeCubit>(),
          listener: (BuildContext context, state) {},
          builder: (BuildContext context, Object? state) {
            if (state is WeatherHomeInitial) {
              return Center(
                child: Padding(
                  padding: const EdgeInsets.all(21.0),
                  child: Text(
                    'Tap on the search button to check the weather in your city',
                    style: Theme.of(context).textTheme.headlineLarge,
                    textAlign: TextAlign.center,
                  ),
                ),
              );
            }
            if (state is WeatherLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is WeatherError) {
              return Center(
                child: Padding(
                  padding: const EdgeInsets.all(21.0),
                  child: Text(
                    state.message,
                    style: Theme.of(context).textTheme.headlineLarge,
                    textAlign: TextAlign.center,
                  ),
                ),
              );
            } else if (state is WeatherLoaded) {
              return CustomScrollView(
                slivers: [
                  SliverAppBar(
                    leading: const SizedBox.shrink(),
                    floating: false,
                    pinned: true,
                    expandedHeight: 200.0,
                    flexibleSpace: FlexibleSpaceBar(
                      title: Text(state.weather.name,
                          style: Theme.of(context).textTheme.headlineLarge),
                      background: Container(color: Colors.transparent),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 21),
                      child: CurrentWeatherDetailsWidget(
                        main: state.weather.weather.first.main,
                        feelsLike: state.weather.main.feelsLike,
                        iconUrl:
                            'https://openweathermap.org/img/wn/${state.weather.weather.first.icon}@2x.png?apiid=${dotenv.env['WEATHER_API_KEY']}}',
                        humanDate: 'Now',
                        temp: state.weather.main.temp,
                        tempMax: state.weather.main.tempMax,
                        tempMin: state.weather.main.tempMin,
                      ),
                    ),
                  ),
                  // const SliverPadding(
                  //     padding: EdgeInsets.only(top: 12, bottom: 12)),
                  // const SliverToBoxAdapter(
                  //   child: Divider(height: 1),
                  // ),
                  // SliverToBoxAdapter(
                  //   child: Padding(
                  //     padding: const EdgeInsets.symmetric(
                  //         vertical: 12, horizontal: 12),
                  //     child: Text(
                  //       '4-day forecast',
                  //       style:
                  //           Theme.of(context).textTheme.titleMedium?.copyWith(
                  //                 fontStyle: FontStyle.italic,
                  //               ),
                  //     ),
                  //   ),
                  // ),
                  // const SliverToBoxAdapter(
                  //   child: Padding(
                  //     padding: EdgeInsets.symmetric(horizontal: 21),
                  //     child: Card(
                  //         child: Row(
                  //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //       children: [
                  //         ForecastItem(
                  //             temp: 28, icon: '10n', humandDate: 'MON'),
                  //         ForecastItem(
                  //             temp: 28, icon: '10n', humandDate: 'TUE'),
                  //         ForecastItem(
                  //             temp: 28, icon: '10n', humandDate: 'WED'),
                  //         ForecastItem(
                  //             temp: 28, icon: '10n', humandDate: 'THU'),
                  //       ],
                  //     )),
                  //   ),
                  // ),
                ],
              );
            } else {
              return const Text('Something went wrong');
            }
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Open the search page when the button is pressed
          Navigator.of(context).push(_buildPopupSearchPageRoute()).then(
            (value) {
              // Do something with the search result
              GetIt.I<WeatherHomeCubit>().searchCity(value);
            },
          );
        },
        tooltip: 'Search city',
        child: const Icon(Icons.search),
      ),
    );
  }

  // Function to build the popup-style search page route
  PageRouteBuilder _buildPopupSearchPageRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) {
        return const SearchPage();
      },
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1.0, 0.0);
        const end = Offset.zero;
        const curve = Curves.easeInOut;
        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        var offsetAnimation = animation.drive(tween);

        return SlideTransition(
          position: offsetAnimation,
          child: child,
        );
      },
    );
  }
}

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search your city'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextField(
              autofocus: true,
              decoration: const InputDecoration(
                hintText: 'Type your city name here...',
                border: OutlineInputBorder(),
              ),
              onSubmitted: (value) {
                // Close the search page when the user submits the search
                Navigator.of(context).pop(value);
              },
            ),
          ],
        ),
      ),
    );
  }
}
