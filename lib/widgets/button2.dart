import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:salon_app/constants/colors.dart';
import 'package:salon_app/uidata.dart';

class CustomElevatedButtonRounded extends StatelessWidget {
  final String btnText;
  final VoidCallback onPressed;

  const CustomElevatedButtonRounded(
      {required this.btnText, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: EdgeInsets.symmetric(horizontal: 10),
      height: 30,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
        ),
        onPressed: onPressed,
        child: Text(
          btnText,
          style: TextStyle(
            color: Colors.black,
            fontSize: 15.5,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}

class ReturnButton extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final VoidCallback onPressed;

  const ReturnButton({
    required this.icon,
    required this.iconColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        icon,
        color: iconColor,
      ),
      onPressed: onPressed,
    );
  }
}

class CustomTextButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomTextButton({
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SizedBox(
      width: 190,
      child: TextButton(
        onPressed: onPressed,
        style: ButtonStyle(
          textStyle: MaterialStateProperty.resolveWith<TextStyle>(
            (_) {
              return TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontWeight: FontWeight.bold);
            },
          ),
          backgroundColor: MaterialStateProperty.all<Color>(
            Colors.transparent,
          ),
          foregroundColor: MaterialStateProperty.all<Color>(
            Colors.black,
          ),
          shape: MaterialStateProperty.resolveWith<OutlinedBorder>(
            (_) {
              return RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              );
            },
          ),
          minimumSize: MaterialStateProperty.all<Size>(
            Size(220, 20),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            backgroundColor: Colors.transparent,
          ),
        ),
      ),
    );
  }
}
