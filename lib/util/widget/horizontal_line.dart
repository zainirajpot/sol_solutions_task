import 'package:flutter/material.dart';

class HorizontalLinesWithText extends StatelessWidget {
  final String text;

  const HorizontalLinesWithText({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Divider(
            color: Colors.black,
            height: 1,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Text(
            text,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
          child: Divider(
            color: Colors.black,
            height: 1,
          ),
        ),
      ],
    );
  }
}
