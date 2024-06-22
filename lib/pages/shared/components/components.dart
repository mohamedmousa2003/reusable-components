import 'package:flutter/material.dart';

Widget defaultButton({
  double width = double.infinity,
  double height = 50,
  Color color = Colors.blue,
  double numBorderRadius = 4,
  required String title,
  required Function() onTap,
  bool isUpperCase = true ,
}) =>
    InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(10),
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(numBorderRadius),
        ),
        child: Center(
            child: Text(
              isUpperCase ? title.toUpperCase() : title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 25,
              ),
            )),
      ),
    );
