import 'package:flutter/material.dart';
import 'package:test/presentation/utils/colors.dart';

class QualityChip extends StatelessWidget {
  const QualityChip({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(minWidth: 162, minHeight: 44),
      decoration: BoxDecoration(
        color: ColorPalette.primaryYellow,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(200),
          bottomLeft: Radius.circular(200),
        ),
        border: Border.all(color: ColorPalette.tealSecondary300, width: 1),
      ),
      child: Center(
        child: Text(
          text,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: Colors.black,
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
