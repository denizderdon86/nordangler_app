import 'package:flutter/material.dart';

class FishingTippsScreen extends StatelessWidget {
  static const routeName = '/FishingTippsScreen';
  const FishingTippsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FishingTippsScreen'),
      ),
      body: const Center(
        child: Text('FishingTippsScreen'),
      ),
    );
  }
}
