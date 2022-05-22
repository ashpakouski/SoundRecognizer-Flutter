import 'package:flutter/material.dart';
import 'package:collection/collection.dart';
import 'dart:math';

class AudioVisualizer extends StatelessWidget {
  final List<int> soundValues;
  final int barsNumber;
  final int maxAmplitude;
  final double maxHeight;
  final double? minHeight;
  final Duration? animationDuration;
  final double barWidth;
  final BorderRadius? barRadius;
  final EdgeInsets? barPadding;
  final Color? barColor;

  const AudioVisualizer({
    Key? key,
    required this.soundValues,
    required this.barsNumber,
    required this.maxAmplitude,
    required this.maxHeight,
    this.minHeight,
    this.animationDuration,
    this.barWidth = 10,
    this.barRadius,
    this.barPadding,
    this.barColor,
  })  : assert(barsNumber > 1),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final maxAmplitudes = _retrieveNormalizedAmplitudes();

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        for (var rangeIntensity in maxAmplitudes) _buildBar(rangeIntensity),
      ],
    );
  }

  Widget _buildBar(double intensity) {
    return Padding(
      padding: barPadding ?? const EdgeInsets.symmetric(horizontal: 5.0),
      child: AnimatedContainer(
        duration: animationDuration ?? const Duration(milliseconds: 500),
        height: max(minHeight ?? 0, intensity * maxHeight),
        width: barWidth,
        decoration: BoxDecoration(
          color: barColor,
          borderRadius: barRadius ?? BorderRadius.circular(5),
        ),
      ),
    );
  }

  List<double> _retrieveNormalizedAmplitudes() {
    final normalizedAmplitudes = List.filled(barsNumber, 0.0);
    final int rangeLength = (soundValues.length / barsNumber).floor();

    if (rangeLength > 0) {
      for (int i = 0; i < barsNumber; i++) {
        final currentSublist = soundValues.getRange(i * rangeLength, (i + 1) * rangeLength - 1);

        print("Len: ${currentSublist.length}; CurrentSublist: $currentSublist");

        if (currentSublist.isNotEmpty) {
          //normalizedAmplitudes[i] = currentSublist.reduce(max) / maxAmplitude;
          normalizedAmplitudes[i] = (currentSublist.sum / currentSublist.length) / maxAmplitude;
        }

        normalizedAmplitudes[i] = 1 - normalizedAmplitudes[i];
      }
    }

    for (int i = 0; i < normalizedAmplitudes.length; i++) {
      if (normalizedAmplitudes[i] < 0.001) {
        normalizedAmplitudes[i] = normalizedAmplitudes.sum / normalizedAmplitudes.length;
      }
    }

    return normalizedAmplitudes;
  }
}