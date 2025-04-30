import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: ListTile(
              leading: const Icon(Icons.star),
              title: Text('Item ${index + 1}'),
              subtitle: Text('Subtitle for item ${index + 1}'),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                // Handle item tap
              },
            ),
          );
        },
      ),
    );
  }
}