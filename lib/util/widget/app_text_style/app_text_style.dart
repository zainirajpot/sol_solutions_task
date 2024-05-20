import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyle extends StatelessWidget {
  final String text;
  final bool fontSize;
  final bool fontWeight;

  const AppTextStyle({
    super.key,
    required this.text,
    this.fontSize = true,
    this.fontWeight = true,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize
            ? 28
            : 19, // If true, apply font size of 14, else let it be null
        fontWeight: fontWeight ? FontWeight.w600 : FontWeight.w500,
      ),
    );
  }
}



class AppTextAll extends StatelessWidget {
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;

  const AppTextAll({
    super.key,
    required this.text,
    this.fontSize,
    this.fontWeight,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,  // Apply the color here
      ),
    );
  }
}
class AllertaStencilText extends StatelessWidget {
  final String text;
final Color? color;

  const AllertaStencilText({
    super.key,
    required this.text, this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.allertaStencil(
        fontSize: 21,
        color:color,
        fontWeight: FontWeight.w500,
        
      ),
    );
  }
}
