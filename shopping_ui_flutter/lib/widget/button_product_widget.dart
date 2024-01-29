import 'package:flutter/material.dart';

class ProductButtonWIdget extends StatelessWidget {
  final double? width;
  final String? text;
  final Color? color;

  const ProductButtonWIdget(
      {super.key, this.width, this.text, this.color = const Color(0xFFDB3022)});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: color,
      ),
      child: Center(
        child: Text(
          text!,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.w800,
              ),
        ),
      ),
    );
  }
}
