import 'package:flutter/material.dart';
import 'package:reusable/pages/home/home_screen.dart';

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
      title: 'reusable components',
      initialRoute: HomeScreen.routeName,
      //route == map
      routes: {
        HomeScreen.routeName : (context)=>  HomeScreen(),
      },
    );
  }
}
