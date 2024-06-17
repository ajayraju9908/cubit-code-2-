import 'package:flutter/material.dart';
import 'package:providercode3/states/statefull_home_screen.dart';
import 'package:providercode3/states/stateless_home_screen.dart';
import 'package:providercode3/states/why_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  Stf_HomeScreen()
    );
  }
}

