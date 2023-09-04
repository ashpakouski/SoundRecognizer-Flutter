import 'package:flutter/material.dart';

class TextInputField extends StatelessWidget {
  const TextInputField({
    required this.controller,
    this.hint,
    super.key,
    this.validator,
    this.onChanged,
  });

  final String? hint;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTapOutside: (_) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      onChanged: onChanged,
      enabled: true,
      controller: controller,
      validator: validator,
      autofocus: false,
      style: const TextStyle(color: Colors.white70),
      decoration: InputDecoration(
        errorMaxLines: 3,
        errorText: null,
        // errorStyle: widget.errorStyle,
        filled: true,
        // fillColor: Colors.white70,
        // prefixIcon: widget.prefixIcon ?? _getPrefix(),
        // prefixIconConstraints: widget.prefixIconConstraints,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 12, horizontal: 14),
        hintText: hint,
        hintStyle: const TextStyle(color: Colors.white54),
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white54, width: 2),
          // borderSide: _outlineBorderSide,
          // borderRadius: outlineBorderRadius
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white54, width: 2),
          // borderSide: _outlineBorderSide,
          // borderRadius: outlineBorderRadius
        ),
        errorBorder: const OutlineInputBorder(
            // borderSide: _errorBorderSide,
            // borderRadius: outlineBorderRadius
            ),
      ),
    );
  }
}
