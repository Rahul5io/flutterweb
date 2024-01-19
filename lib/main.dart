import 'package:flutter/material.dart';

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
      home: const MyHomePage(title: 'FlutHome Page'),
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
              Text("Hi, Flutter. I am Rahul, This is my first flutter app"),
              Text(count.toString()),
              ElevatedButton(
                onPressed: () {
                  increaseCount();
                  print(count.toString());
                },
                child: Text("HI"),
              )
            ],
          ),
        ));
  }
}
