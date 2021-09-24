import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
// Our design contains Neumorphism design and i made a extension for it
// We can apply it on any widget

extension OuterNeumorphism on Widget {
  Widget outerNeumorphism({
    double borderRadius = 10.0,
    Offset offset = const Offset(5, 5),
    double blurRadius = 10,
    Color topShadowColor = Colors.white60,
    Color bottomShadowColor = const Color(0x266A7183),
  }) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
        boxShadow: <BoxShadow>[
          BoxShadow(
            offset: offset,
            blurRadius: blurRadius,
            color: bottomShadowColor,
          ),
          BoxShadow(
            offset: Offset(-offset.dx, -offset.dx),
            blurRadius: blurRadius,
            color: topShadowColor,
          ),
        ],
      ),
      child: this,
    );
  }
}

extension InnerNeumorphism on Widget {
  Widget innerNeumorphism({
    double depth = -10,
    Color shadowDarkColor = const Color(0xFFFFFFFF),
    Color shadowLightColor = const Color(0xFFE8EBF3),
    Color fillColor = const Color(0xFFF6F8FE),
  }) {
    // to use this extension add [flutter_neumorphic: ^3.1.0] package to your pubSpec yaml
    return Neumorphic(
      style: NeumorphicStyle(
        depth: -10,
        shadowDarkColor: shadowDarkColor,
        shadowLightColor: shadowLightColor,
        color: fillColor,
      ),
      child: this,
    );
  }
}
