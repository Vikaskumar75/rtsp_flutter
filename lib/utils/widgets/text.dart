import 'package:easy_coding/big_head_softwares.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Heading1 extends StatelessWidget {
  const Heading1(
    this.text, {
    Key? key,
    this.color,
    this.centerText = false,
    this.size,
    this.fontWeight,
    this.maxLines,
  }) : super(key: key);

  final String text;
  final Color? color;
  final bool centerText;
  final double? size;
  final FontWeight? fontWeight;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    if (kIsWeb) {
      return SelectableText(
        text,
        maxLines: maxLines,
        style: textTheme(context).headline6!.copyWith(
              color: color,
              fontWeight: fontWeight,
              fontSize: size,
            ),
        textAlign: centerText ? TextAlign.center : TextAlign.start,
      );
    } else {
      return Text(
        text,
        maxLines: maxLines,
        style: textTheme(context).headline6!.copyWith(
              color: color,
              fontWeight: fontWeight,
              fontSize: size,
            ),
        textAlign: centerText ? TextAlign.center : TextAlign.start,
      );
    }
  }
}

class Heading2 extends StatelessWidget {
  const Heading2(
    this.text, {
    Key? key,
    this.color,
    this.centerText = false,
    this.size,
    this.fontWeight,
    this.maxLines,
  }) : super(key: key);

  final String text;
  final Color? color;
  final bool centerText;
  final double? size;
  final FontWeight? fontWeight;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    if (kIsWeb) {
      return SelectableText(
        text,
        maxLines: maxLines,
        style: textTheme(context).caption!.copyWith(
              color: color,
              fontWeight: fontWeight,
              fontSize: size,
            ),
        textAlign: centerText ? TextAlign.center : TextAlign.start,
      );
    } else {
      return Text(
        text,
        maxLines: maxLines,
        style: textTheme(context).caption!.copyWith(
              color: color,
              fontWeight: fontWeight,
              fontSize: size,
            ),
        textAlign: centerText ? TextAlign.center : TextAlign.start,
      );
    }
  }
}

class SubHeading1 extends StatelessWidget {
  const SubHeading1(
    this.text, {
    Key? key,
    this.color,
    this.centerText = false,
    this.size,
    this.fontWeight,
    this.maxLines,
  }) : super(key: key);

  final String text;
  final Color? color;
  final bool centerText;
  final double? size;
  final FontWeight? fontWeight;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    if (kIsWeb) {
      return SelectableText(
        text,
        maxLines: maxLines,
        style: textTheme(context).bodyText1!.copyWith(
              color: color,
              fontWeight: fontWeight,
              fontSize: size,
            ),
        textAlign: centerText ? TextAlign.center : TextAlign.start,
      );
    } else {
      return Text(
        text,
        maxLines: maxLines,
        style: textTheme(context).bodyText1!.copyWith(
              color: color,
              fontWeight: fontWeight,
              fontSize: size,
            ),
        textAlign: centerText ? TextAlign.center : TextAlign.start,
      );
    }
  }
}

class SubHeading2 extends StatelessWidget {
  const SubHeading2(
    this.text, {
    Key? key,
    this.color,
    this.centerText = false,
    this.size,
    this.fontWeight,
    this.maxLines,
  }) : super(key: key);

  final String text;
  final Color? color;
  final bool centerText;
  final double? size;
  final FontWeight? fontWeight;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    if (kIsWeb) {
      return SelectableText(
        text,
        maxLines: maxLines,
        style: textTheme(context).bodyText2!.copyWith(
              color: color,
              fontWeight: fontWeight,
              fontSize: size,
            ),
        textAlign: centerText ? TextAlign.center : TextAlign.start,
      );
    } else {
      return Text(
        text,
        maxLines: maxLines,
        style: textTheme(context).bodyText2!.copyWith(
              color: color,
              fontWeight: fontWeight,
              fontSize: size,
            ),
        textAlign: centerText ? TextAlign.center : TextAlign.start,
      );
    }
  }
}
