import 'package:flutter/material.dart';
import 'package:salon_app/constants/colors.dart';
import 'package:salon_app/uidata.dart';

class CustomButton extends StatelessWidget {
  final String btnText;
  final VoidCallback onpressed;
  final int colorText;
  final double width;
  final double height;
  final int colorBackground;

  const CustomButton({
    Key key,
    this.btnText,
    this.onpressed,
    this.colorBackground,
    this.colorText,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: ElevatedButton(
          child: Text(btnText,
              style: TextStyle(
                  color: Color(colorText ?? 0xff000000),
                  fontSize: 15.5,
                  fontWeight: FontWeight.w400)),
          onPressed: onpressed,
          style: ButtonStyle(
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
            ),
            backgroundColor: MaterialStateProperty.all<Color>(
              Color(colorBackground ?? 0xff000000),
            ),
          )),
    );
  }
}

class CustomTextFormField extends StatelessWidget {
  final String labelText;
  final String hintText;
  final int colorHintText;
  final int colorLabelText;
  final dynamic colorTextStyle;
  final bool enabled;
  final String value;

  CustomTextFormField({
    Key key,
    this.labelText,
    this.hintText,
    this.colorHintText,
    this.colorLabelText,
    this.colorTextStyle,
    this.enabled = true,
    this.value,
  }) : super(key: key);

  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    _textEditingController.text = value ?? '';

    return SizedBox(
      width: 310,
      height: 50,
      child: TextFormField(
        style: TextStyle(color: colorTextStyle),
        controller: _textEditingController,
        enabled: enabled,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.white),
          labelText: labelText,
          labelStyle: TextStyle(
            color: Color(colorLabelText),
            fontWeight: FontWeight.bold,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(gradientColor)),
            borderRadius: BorderRadius.circular(10.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(gradientColor)),
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        keyboardType: TextInputType.emailAddress,
        validator: (value) {
          if (value.isEmpty) {
            return 'Por favor ingrese su correo electrónico';
          }
          if (!value.contains('@')) {
            return 'Por favor ingrese un correo electrónico válido';
          }
          return null;
        },
      ),
    );
  }
}
