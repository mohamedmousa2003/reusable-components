import 'package:flutter/material.dart';

import '../shared/components/components.dart';

class HomeScreen extends StatelessWidget {
  static String routeName ="home";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: const Text("reusable components"),
      ),
      body: Column(
        children: [
          defaultButton(
            title: "login",
            onTap: (){},
          ),
          defaultButton(
            title: "login",
            onTap:  (){},
            isUpperCase: false,
          ),
        ],
      ),
    );
  }
}
