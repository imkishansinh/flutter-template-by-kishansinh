import 'package:flutter/material.dart';
import '../widgets/weather_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: const Icon(Icons.cloud_outlined),
            expandedHeight: 200.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Home',
                  style: Theme.of(context).textTheme.headlineLarge),
              background: Container(color: Colors.transparent),
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {
                  // Handle search action
                },
              ),
              IconButton(
                icon: const Icon(Icons.location_searching),
                onPressed: () {
                  // Handle current location action
                },
              ),
            ],
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (_, index) {
                return const ListTile(
                  title: WeatherCard(
                    city: 'Ahmedabad',
                    celceius: 32.01,
                    shortDescription: 'Bla bla bla',
                    weatherIconName: '50d',
                  ),
                );
              },
              childCount: 5,
            ),
          ),
        ],
      ),
    );
  }
}
