import 'package:flutter/material.dart';

class VariantPicker<T extends Enum> extends StatelessWidget {
  final T currentElement;
  final List<T> variants;
  final String Function(T) stringBuilder;
  final void Function(T) onChange;
  final Color? selectedColor;
  final double fontSize;

  const VariantPicker({
    required this.currentElement,
    required this.onChange,
    required this.stringBuilder,
    required this.variants,
    this.selectedColor,
    this.fontSize = 16,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color(0xFF1E2529),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: List.generate(
          variants.length,
          (index) {
            final isChosenButton = currentElement == variants[index];
            final name = stringBuilder(variants[index]);

            return GestureDetector(
              onTap: () => onChange(variants[index]),
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: isChosenButton
                      ? (selectedColor ?? const Color(0xFF243037))
                      : const Color(0xFF1E2529),
                ),
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                // margin: const EdgeInsets.symmetric(horizontal: 4),
                child: Center(
                  child: Text(
                    name,
                    style: const TextStyle(color: Color(0xFFD0D0D4)),
                    textAlign: TextAlign.center,
                    maxLines: 1,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
