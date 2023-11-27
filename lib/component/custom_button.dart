import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  final Color color, textColor;

  const CustomButton({
    required this.text,
    this.onPressed,
    this.color = Colors.blueGrey,
    this.textColor = Colors.white,
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
            color: color, // Set the background color
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Center(
            child: Text(text, style: TextStyle(
                color: Colors.white,
                fontSize: 20
            ),),
          )
      ),
    );
  }
}
