import 'package:flutter/material.dart';

class IconMic extends StatelessWidget {
  const IconMic({super.key, this.size});

  final double? size;

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.mic,
      size: size,
    );
  }
}
