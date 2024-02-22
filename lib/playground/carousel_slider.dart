import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainScreenApp());
}

class MainScreenApp extends StatelessWidget {
  const MainScreenApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          actions: [Image.asset('assets/images/fr.png')],
          leading: const Icon(Icons.arrow_back_ios_new),
          title: const Text(
            'Alben',
            style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w700,
                color: Colors.black54),
          ),
        ),
        body: MainScreen(),
      ),
    );
  }
}

class MainScreen extends StatelessWidget {
  final List<String> imgList = [
    'assets/images/möwe.png',
    'assets/images/mo.jpg',
    'assets/images/max.jpg',
    'assets/images/merlo.jpg',
    'assets/images/paulo.jpg',
    'assets/images/sunrute.png',
    'assets/images/sun.jpg',
    'assets/images/sunangler.png',
  ];

  MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        CarouselSlider(
          options: CarouselOptions(height: 200.0),
          items: imgList
              .map((item) => Container(
                  child: Image.asset(item, fit: BoxFit.cover, width: 1000)))
              .toList(),
        ),
        CarouselSlider(
          options: CarouselOptions(height: 200.0),
          items: imgList
              .map((item) => Container(
                  child: Image.asset(item, fit: BoxFit.cover, width: 1000)))
              .toList(),
        ),
      ],
    );
  }
}
