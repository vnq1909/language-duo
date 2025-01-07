import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final Function onPressed;
  final Color color;
  final Color colorText;
  final double width;
  final bool showProgress;

  const Button(this.text,
      {required this.onPressed,
      this.color = const Color(0xFFA5D6A7),
      this.colorText = const Color.fromARGB(255, 255, 255, 255),
      this.width = double.infinity,
      this.showProgress = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
        ),
        onPressed: () => onPressed(),
        child: showProgress
            ? Center(
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(colorText),
                ),
              )
            : Text(
                text,
                style: TextStyle(
                  color: colorText,
                  fontSize: 12,
                ),
              ),
      ),
    );
  }
}
