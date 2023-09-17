import 'package:flutter/material.dart';

import '../../theme/theme_color.dart';

class QButton extends StatelessWidget {
  final String label;
  final Color? color;
  final Color? textColor;
  final Function onPressed;
  final bool disabled;
  const QButton({
    Key? key,
    required this.label,
    this.color,
    this.textColor,
    required this.onPressed,
    this.disabled = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (disabled) {
      return SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 42,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: disabledColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          onPressed: () {},
          child: Text(
            label,
            style: TextStyle(
              color: disabledTextColor,
              fontSize: 14,
            ),
          ),
        ),
      );
    }

    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 42,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color ?? primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        onPressed: () => onPressed(),
        child: Text(
          label,
          style: TextStyle(
            color: textColor ?? Colors.white,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
