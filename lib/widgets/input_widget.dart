import 'package:flutter/material.dart';

import '../utils/extensions/color_extension.dart';
import '../utils/extensions/text_style_extention.dart';

class InputWidget extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode focus;
  final String hint;

  const InputWidget({
    super.key,
    required this.controller,
    required this.focus,
    required this.hint,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLength: 100,
      maxLines: 1,
      autocorrect: false,
      controller: controller,
      focusNode: focus,
      onTapOutside: (_) => focus.unfocus(),
      cursorColor: context.textPrimary,
      decoration: InputDecoration(
        filled: true,
        fillColor: context.cardColor,
        hintText: hint,
        hintStyle: context.body,
        contentPadding: const EdgeInsets.symmetric(horizontal: 20),
        counter: const SizedBox.shrink(),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: context.textSecondary),
        ),
      ),
    );
  }
}
