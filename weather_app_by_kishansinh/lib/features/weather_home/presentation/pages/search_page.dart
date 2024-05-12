import 'package:flutter/material.dart';

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
                Navigator.of(context).pop(value.trim());
              },
            ),
          ],
        ),
      ),
    );
  }
}
