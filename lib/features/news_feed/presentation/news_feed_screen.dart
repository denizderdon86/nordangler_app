import 'package:flutter/material.dart';
import 'package:nordangler/config/app_sizes.dart';
import 'package:nordangler/features/news_feed/presentation/curved_nav_bar.dart';
import 'package:nordangler/features/news_feed/presentation/news_list_view.dart';

class NewsFeedScreen extends StatelessWidget {
  static const routeName = '/NewsFeedScreen';
  const NewsFeedScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(
        backgroundColor: Colors.white70,
      ),
      appBar: AppBar(
        toolbarHeight: 115,
        leading: const Icon(
          Icons.menu,
          size: 32,
          color: Colors.white,
        ),
        actions: const [
          Icon(
            Icons.keyboard_control_rounded,
            size: 32,
            color: Colors.white,
          )
        ],
        flexibleSpace: Image.asset('assets/images/da.jpg', fit: BoxFit.cover),
        title: const Text(
          'Neuigkeiten',
          style: TextStyle(
              fontSize: 44, fontWeight: FontWeight.w700, color: Colors.white70),
        ),
      ),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.all(Sizes.p12),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: Sizes.p32, vertical: Sizes.p12),
                  child: SearchBar(
                    leading: Icon(
                      Icons.search,
                      size: 24,
                    ),
                    hintText: "Suchen",
                  ),
                ),
                NewsListView(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const CurvedNavBar(),
    );
  }
}
