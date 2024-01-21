import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'GameShop'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int count = 0;

  final List<String> gameName = [
    'Prince of Persia',
    'Grand theft Auto',
    'Wathdogs 2',
    'Assassin Creed: Mirage',
    'Mario'
  ];

  final List<String> imgList = [
    'https://relay-bl-in-records.sgp1.cdn.digitaloceanspaces.com/GameNation/AdAsset_96',
    'https://relay-bl-in-records.sgp1.cdn.digitaloceanspaces.com/GameNation/AdAsset_102',
    'https://relay-bl-in-records.sgp1.cdn.digitaloceanspaces.com/GameNation/AdAsset_100',

  ];

  @override
  Widget build(BuildContext context) {
    void increaseCount() {
      setState(() {
        count++;
      });
    }

    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            children: [
              Text("Start your gaming journey with us"),
              Text(count.toString()),
              ElevatedButton(
                onPressed: () {
                  increaseCount();
                },
                child: Text("Increas Count"),
              ),

              CarouselSlider(
                  options: CarouselOptions(
                    autoPlay: true,
                    aspectRatio: 2.0,
                    enlargeCenterPage: true,
                  ),
                  items: imgList
                      .map((e) => Container(
                            child: Image.network(
                              e,
                              fit: BoxFit.cover,
                              width: 1000,
                            ),
                          ))
                      .toList()),

                    Text('Game Titles'),

              Expanded(
                child: ListView.builder(
                    itemCount: gameName.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child:ListTile(
                          title:  Text(gameName[index])
                        ),
                      );
                    }),
              )
            ],
          ),
        ));
  }
}
