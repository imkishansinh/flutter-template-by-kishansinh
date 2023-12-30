import 'package:flutter/material.dart';
import '../widgets/current_weather_details_widget.dart';
import '../widgets/forecast_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: const SizedBox.shrink(),
            floating: false,
            pinned: true,
            expandedHeight: 200.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Adalaj',
                  style: Theme.of(context).textTheme.headlineLarge),
              background: Container(color: Colors.transparent),
            ),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 21),
              child: CurrentWeatherDetailsWidget(
                main: 'Smoke',
                feelsLike: 28,
                icon: '01d',
                humanDate: 'Now',
                temp: 28,
                tempMax: 29,
                tempMin: 28,
              ),
            ),
          ),
          const SliverPadding(padding: EdgeInsets.only(top: 12, bottom: 12)),
          const SliverToBoxAdapter(
            child: Divider(height: 1),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
              child: Text(
                '4-day forecast',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontStyle: FontStyle.italic,
                    ),
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 21),
              child: Card(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ForecastItem(temp: 28, icon: '10n', humandDate: 'MON'),
                  ForecastItem(temp: 28, icon: '10n', humandDate: 'TUE'),
                  ForecastItem(temp: 28, icon: '10n', humandDate: 'WED'),
                  ForecastItem(temp: 28, icon: '10n', humandDate: 'THU'),
                ],
              )),
            ),
          ),
        ],
      ),
    );
  }
}
