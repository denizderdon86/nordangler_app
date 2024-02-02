import 'package:flutter/material.dart';
import 'package:nordangler/config/app_sizes.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 10,
      itemBuilder: (context, index) {
        return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            children: [
              CircleAvatar(
                child: Image.asset(
                  'assets/images/merlo.jpg',
                ),
              ),
              gapW8,
              const Text(
                "Drillhunter",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              const Spacer(),
              const Text(
                "31.01.2024",
                style: TextStyle(fontSize: 10, color: Colors.blue),
              ),
            ],
          ),
          gapH16,
          const Text(
            "Hamburg",
            strutStyle: StrutStyle(fontWeight: FontWeight.bold),
            style: TextStyle(fontSize: 10, color: Colors.lightBlue),
          ),
          gapH16,
          Image.asset('assets/images/mariob.jpg'),
          gapH48,
        ]);
      },
    );
  }
}
