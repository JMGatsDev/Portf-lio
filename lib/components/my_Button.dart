import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Color? boxColor;
  final IconData? widgetIcon;
  final Function? onPress;
  final String? text;
  final double? iconSize;
  final double? fontSize;
  final double height;
  final double width;
  final Color? fontColor;

  const MyButton(
      {@required this.boxColor,
      this.widgetIcon,
      @required this.onPress,
      this.text,
      required this.width,
      required this.height,
      this.iconSize,
      this.fontSize,
      this.fontColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPress!();
      },
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: boxColor,
          borderRadius: BorderRadius.circular(28.0),
        ),
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              widgetIcon == null
                  ? Container()
                  : Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Icon(
                        widgetIcon,
                        size: iconSize ?? 22,
                        color: Colors.white,
                      ),
                    ),
              if (text != null)
                Text(
                  text!,
                  style: TextStyle(
                      fontSize: fontSize ?? 12,
                      color: fontColor ?? Colors.white,
                      fontWeight: FontWeight.bold),
                )
            ],
          ),
        ),
      ),
    );
  }
}
