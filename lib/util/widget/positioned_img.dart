
import 'package:flutter/material.dart';

class PositionedImage extends StatelessWidget {
  final double? top;
  final double? left;
  final double? bottom;
  final double? right;
  final String imageAsset;

  const PositionedImage({
    Key? key,
    this.top,
    this.left,
    required this.imageAsset,
    this.bottom,
    this.right,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top ?? 0,
      left: left ?? 0,
      bottom: bottom ?? 0,
      right: right ?? 0,
      child: Image.asset(
        imageAsset,
        width: 200,
        height: 200,
      ),
    );
  }
}
