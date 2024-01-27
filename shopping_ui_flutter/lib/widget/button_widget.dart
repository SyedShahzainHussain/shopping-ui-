import 'package:flutter/material.dart';
import 'package:shopping_ui_flutter/utils/color.dart';

class ButtonWidget extends StatelessWidget {
  final void Function()? onPressed;
  final String? text;
  const ButtonWidget({super.key, this.onPressed, this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: const Size.fromHeight(55),
        backgroundColor: AppColors.butttonColor2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Text(
        text!,
        style: const TextStyle(
          fontSize: 18,
          color: Colors.white,
        ),
      ),
    );
  }
}
