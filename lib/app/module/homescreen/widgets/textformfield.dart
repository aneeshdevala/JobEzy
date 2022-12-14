import 'package:flutter/material.dart';

class TextFormWidget extends StatelessWidget {
  const TextFormWidget(
      {Key? key,
      required this.icon,

      required this.iconsize,
      required this.textHeight,
      required this.padding,
      required this.color,
      required this.radius,
      required this.iconcolor,
      required this.controller,
      this.hintxt='',
      this.hiddentext = true,
      this.sufixIcon,
      required this.validatorErrorMessage})
      : super(key: key);

  final IconData icon;
  final IconButton? sufixIcon;

  final double iconsize;
  final double textHeight;
  final double padding;
  final Color color;
  final String hintxt;
  final Color iconcolor;
  final double radius;
  final TextEditingController controller;
  final bool hiddentext;
  final String validatorErrorMessage;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      
      obscureText: hiddentext,
      controller: controller,
      decoration: InputDecoration(
      hintText:hintxt ,
        contentPadding: EdgeInsets.all(padding),

        prefixIcon: Icon(
          icon,
          color: iconcolor,
          size: iconsize,
        ),
        suffixIcon: sufixIcon,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radius),
            borderSide: BorderSide(color: color)),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
          borderSide: BorderSide(color: color),
        ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return validatorErrorMessage;
        } else {
          return null;
        }
      },
    );
  }
}
