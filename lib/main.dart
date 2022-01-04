import 'package:flutter/material.dart';
import 'package:flutter_simple_provider_app/providers/counter_provider.dart';
import 'package:flutter_simple_provider_app/screens/homepage.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (_) => Counter(),
    ),
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Simple Provider App',
      initialRoute: '/',
      routes: {
        "/": (context) => HomePage(),
      },
    );
  }
}
