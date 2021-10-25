import 'package:flutter/material.dart';

class button extends StatelessWidget {
  const button(
      {Key? key,
      this.color,
      this.textColor,
      required this.buttonText,
      this.buttontapped})
      : super(key: key);
  final color;
  final textColor;
  final String buttonText;
  final buttontapped;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttontapped,
      child: Padding(
        padding: const EdgeInsets.all(0.2),
        child: ClipRRect(
          // borderRadius: BorderRadius.circular(25),
          child: Container(
            child: Center(
              child: Text(
                buttonText,
                style: TextStyle(
                  color: textColor,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(70.0),
            ),
          ),
        ),
      ),
    );
  }
}
