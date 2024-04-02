import 'package:api_test_2/controller/provider.dart';
import 'package:api_test_2/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Apiprovider(),
      child: const MaterialApp(
        home: Homescreen(),
      ),
    );
  }
}
