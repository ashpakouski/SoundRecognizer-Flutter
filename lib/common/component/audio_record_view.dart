import 'package:flutter/material.dart';

class AudioRecordView extends StatelessWidget {
  final List<int> soundValues;
  final int maxAmplitude;
  final double maxHeight;
  final double? minHeight;
  final Duration? animationDuration;
  final double barWidth;
  final BorderRadius? barRadius;
  final EdgeInsets? barPadding;
  final Color? barColor;

  const AudioRecordView({
    Key? key,
    required this.soundValues,
    required this.maxAmplitude,
    required this.maxHeight,
    this.minHeight,
    this.animationDuration,
    this.barWidth = 10,
    this.barRadius,
    this.barPadding,
    this.barColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        for (var rangeIntensity in soundValues)
          _buildBarDirectly(rangeIntensity.toDouble()),
      ],
    );
  }

  Widget _buildBarDirectly(double amplitude) {
    return Padding(
      padding: barPadding ?? const EdgeInsets.symmetric(horizontal: 5.0),
      child: AnimatedContainer(
        duration: animationDuration ?? const Duration(milliseconds: 500),
        height: amplitude,
        width: barWidth,
        decoration: BoxDecoration(
          color: barColor,
          borderRadius: barRadius ?? BorderRadius.circular(5),
        ),
      ),
    );
  }
}
