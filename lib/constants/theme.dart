import 'package:flutter/material.dart';
import 'package:salon_app/constants/colors.dart';

final appTheme = ThemeData(
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      textStyle: MaterialStateProperty.resolveWith<TextStyle>(
        (_) {
          return const TextStyle(color: Color(gradientColor), fontSize: 17);
        },
      ),
      backgroundColor: MaterialStateProperty.all<Color>(
        Color(primaryColor),
      ),
      foregroundColor: MaterialStateProperty.all<Color>(
        Color(gradientColor),
      ),
      shape: MaterialStateProperty.resolveWith<OutlinedBorder>(
        (_) {
          return RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          );
        },
      ),
      fixedSize: MaterialStateProperty.all<Size>(
        Size(220, 50),
      ),
    ),
  ),
);
