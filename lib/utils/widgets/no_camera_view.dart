part of 'camera_view.dart';

class NoCameraView extends StatelessWidget {
  const NoCameraView({
    Key? key,
    this.height,
    this.width,
    this.radius,
    this.childRadius,
    this.iconSize,
    this.color,
    this.borderColor,
    this.alignment,
    required this.onPressed,
    this.margin,
    this.padding,
    this.fontSize,
  }) : super(key: key);

  final double? height;
  final double? width;
  final double? radius;
  final double? childRadius;
  final double? iconSize;
  final Color? color;
  final Color? borderColor;
  final Alignment? alignment;
  final VoidCallback onPressed;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: padding,
      margin: margin,
      alignment: alignment ?? Alignment.center,
      decoration: BoxDecoration(
        color: color ?? Colours.black.withOpacity(0.8),
        borderRadius: BorderRadius.circular(radius ?? 0),
        border: Border.all(
          color: borderColor ?? Colors.transparent,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: childRadius ?? 40,
            width: childRadius ?? 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colours.white,
              ),
            ),
            child: Center(
              child: IconButton(
                onPressed: onPressed,
                icon: const Icon(
                  Icons.add,
                  size: 20,
                  color: Colours.white,
                ),
              ),
            ),
          ),
          sizedBoxHeight(8),
          SubHeading1(
            'Add url',
            color: Colours.white,
            size: fontSize,
          )
        ],
      ),
    );
  }
}
