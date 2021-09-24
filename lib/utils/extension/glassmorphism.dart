import 'dart:ui';

import 'package:flutter/material.dart';

import '../export.dart';

extension Glassmorphism on Widget {
  Container addGlassmorphism({
    double horizontalMargin = 0.0,
    double verticalMargin = 0.0,
    double frostValue = 16,
    double horizontalPadding = 0.0,
    double verticalPadding = 0.0,
    double? width,
    double? height,
    Color? frostColor,
    double? blurRadius,
    bool boxShadow = true,
    double? borderRadius,
  }) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: horizontalMargin,
        vertical: verticalMargin,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(borderRadius ?? 0),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: frostValue, sigmaY: frostValue),
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: horizontalPadding,
              vertical: verticalPadding,
            ),
            width: width,
            height: height,
            decoration: BoxDecoration(
              boxShadow: <BoxShadow>[
                if (boxShadow)
                  BoxShadow(
                    color: Colours.white.withOpacity(0.2),
                    blurRadius: blurRadius ?? 10,
                  ),
                if (boxShadow)
                  BoxShadow(
                    color: Colours.black.withOpacity(0.2),
                    blurRadius: blurRadius ?? 10,
                  ),
              ],
              color: frostColor ?? Colors.grey.shade400.withOpacity(0.2),
            ),
            child: this,
          ),
        ),
      ),
    );
  }
}
