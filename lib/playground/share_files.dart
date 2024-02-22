import 'package:flutter/material.dart';

class App2 extends StatelessWidget {
  const App2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fisching - Tipps & Tricks',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(
        title: 'Fishing - Tipps & Tricks',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState1 createState() => _MyHomePageState1();
}

class _MyHomePageState1 extends State<MyHomePage> {
  GlobalKey previewContainer = GlobalKey();
  int originalSize = 900;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Wissenswerte - Tips & Tricks',
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.w400),
        ),
      ),
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RepaintBoundary(
                key: previewContainer,
                child: Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              'assets/images/wasser3.png',
                            ))),
                    padding: const EdgeInsets.all(16),
                    margin: const EdgeInsets.all(16),
                    width: MediaQuery.of(context).size.width - 20,
                    height: MediaQuery.of(context).size.height,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          "Welche Forellen sind die häufigsten?",
                          style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 252, 252, 252)),
                        ),
                        Image.asset("assets/images/forellenboy.jpg"),
                        const Text(
                          "Die häufigsten Arten von Forellen in Deutschland sind die Bachforelle, Meerforelle, Seeforelle und Regenbogenforellen, wobei letztere ursprünglich aus Nordamerika stammt. Forellen ernähren sich in der Regel von anderen Fischen, Insekten, Larven und wirbellosen Wassertieren.",
                          style: TextStyle(
                              color: Color.fromRGBO(251, 251, 251, 1),
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    )),
              )
            ],
          ))),
    );
  }
}
