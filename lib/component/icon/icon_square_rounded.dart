import 'package:flutter/material.dart';

class IconSquareRounded extends StatelessWidget {
  const IconSquareRounded({super.key, this.size});

  final double? size;

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.square_rounded,
      size: size,
    );
  }
}
