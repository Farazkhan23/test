import 'package:flutter/material.dart';
import 'package:test/presentation/utils/colors.dart';

class SemiCircleBtn extends StatelessWidget {
  final String text;
  final Color color, textColor;
  const SemiCircleBtn({
    super.key,
    required this.text,
    required this.color,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 66,
      height: 34,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            blurRadius: 8,
            spreadRadius: 0,
            offset: Offset(0, 4),
            blurStyle: BlurStyle.normal,
          ),
        ],
        color: color,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(48),
          bottomRight: Radius.circular(48),
        ),
        border: Border.all(color: ColorPalette.tealSecondary300, width: 1),
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
          fontSize: 14,
          color: textColor,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
