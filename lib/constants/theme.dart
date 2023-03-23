import 'package:flutter/material.dart';
import 'package:salon_app/constants/colors.dart';

final appTheme=ThemeData(
 textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            textStyle: MaterialStateProperty.resolveWith<TextStyle>
            (
              (_) {
                return const TextStyle(
                    color: Color(gradientcolor),
                    fontSize: 17
                  
                    );
              },
            ),
            backgroundColor: MaterialStateProperty.all<Color>(
              Color(primarycolor),
            ),
            foregroundColor: MaterialStateProperty.all<Color>(
              Color(gradientcolor),
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
        )));
