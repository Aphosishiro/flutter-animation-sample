import 'package:flutter/material.dart';

import 'homepage.dart';

void main(List<String> args) {
  runApp(const Example());
}

class Example extends StatelessWidget {
  const Example({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              "Animations",
            ),
            centerTitle: true,
          ),
          body: const Homepage(),
        ),
      ),
    );
  }
}


