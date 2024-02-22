import 'package:flutter/material.dart';
import 'package:nordangler/config/app_sizes.dart';
import 'package:nordangler/config/palette.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 130,
          flexibleSpace: Image.asset(
            'assets/images/ll1.png',
            fit: BoxFit.cover,
          ),
        ),
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/kleinerleichturm.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SingleChildScrollView(
              padding: const EdgeInsetsDirectional.all(24.0),
              child: Column(
                children: <Widget>[
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: nordanglerBlue, // Textfarbe
                          shape: RoundedRectangleBorder(
                            // Form
                            borderRadius: BorderRadius.circular(10),
                          )),
                      child: const Text(
                        'Neuigkeiten',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      onPressed: () {}),
                  gapH20,
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: nordanglerBlue, // Textfarbe
                          shape: RoundedRectangleBorder(
                            // Form
                            borderRadius: BorderRadius.circular(10),
                          )),
                      child: const Text(
                        'Vereine & Gewässer',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      onPressed: () {}),
                  gapH20,
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: nordanglerBlue, // Textfarbe
                          shape: RoundedRectangleBorder(
                            // Form
                            borderRadius: BorderRadius.circular(10),
                          )),
                      child: const Text(
                        'Messenger',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      onPressed: () {}),
                  gapH20,
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: nordanglerBlue, // Textfarbe
                          shape: RoundedRectangleBorder(
                            // Form
                            borderRadius: BorderRadius.circular(10),
                          )),
                      child: const Text(
                        'Mein Profil',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      onPressed: () {}),
                  gapH20,
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: nordanglerBlue, // Textfarbe
                          shape: RoundedRectangleBorder(
                            // Form
                            borderRadius: BorderRadius.circular(10),
                          )),
                      child: const Text(
                        'Standorte',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      onPressed: () {}),
                  gapH20,
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: nordanglerBlue, // Textfarbe
                          shape: RoundedRectangleBorder(
                            // Form
                            borderRadius: BorderRadius.circular(10),
                          )),
                      child: const Text(
                        'Wissenswerte',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      onPressed: () {}),
                  gapH20,
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: nordanglerBlue, // Textfarbe
                          shape: RoundedRectangleBorder(
                            // Form
                            borderRadius: BorderRadius.circular(10),
                          )),
                      child: const Text(
                        'Einstellung',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      onPressed: () {}),
                  gapH48,
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: nordanglerBlue, // Textfarbe
                          shape: RoundedRectangleBorder(
                            // Form
                            borderRadius: BorderRadius.circular(10),
                          )),
                      child: const Text(
                        'LOGOUT',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      onPressed: () {}),
                  gapH32,
                  const Column(
                    children: [
                      Text('AGB        Datenschutz      FAQ          Impressum',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      gapH16
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
