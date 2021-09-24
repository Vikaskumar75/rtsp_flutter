import 'package:easy_coding/big_head_softwares.dart';
import 'package:flutter/material.dart';

class RoundContainer extends StatelessWidget {
  const RoundContainer({
    Key? key,
    required this.child,
    this.color,
    this.margin,
    this.padding,
    this.hPadding,
    this.vPadding,
    this.hMargin,
    this.vMargin,
    this.radius,
    this.height,
    this.width,
    this.boxShadow,
    this.alignment,
  }) : super(key: key);

  final Widget? child;
  final Color? color;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final double? hPadding;
  final double? vPadding;
  final double? hMargin;
  final double? vMargin;
  final double? radius;
  final double? height;
  final double? width;
  final List<BoxShadow>? boxShadow;
  final Alignment? alignment;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      alignment: alignment,
      margin: margin ??
          EdgeInsets.symmetric(
            horizontal: hMargin ?? 0,
            vertical: vMargin ?? 0,
          ),
      padding: padding ??
          EdgeInsets.symmetric(
            horizontal: hPadding ?? 0,
            vertical: vPadding ?? 0,
          ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius ?? 12),
        color: color ?? theme(context).colorScheme.primary,
        boxShadow: boxShadow,
      ),
      child: child,
    );
  }
}
