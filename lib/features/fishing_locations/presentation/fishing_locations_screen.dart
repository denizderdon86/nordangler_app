import 'package:flutter/material.dart';

class FishingLocationsScreen extends StatelessWidget {
  const FishingLocationsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Fishing Locations'),
        ),
        body: const Center(
          child: Text('Meine Fishing Locations'),
        ));
  }
}
