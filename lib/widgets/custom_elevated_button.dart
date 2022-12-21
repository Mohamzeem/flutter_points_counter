// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:basketball_app/widgets/custom_text.dart';

class CWElevatedButton extends StatelessWidget {
  const CWElevatedButton({
    Key? key,
    required this.name,
    required this.onPressed,
    required this.color,
    required this.backgroundColor,
    required this.fontWeight,
    required this.fontSize,
  }) : super(key: key);

  final String name;
  final Function()? onPressed;
  final Color color;
  final Color backgroundColor;
  final FontWeight fontWeight;
  final int fontSize;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          fixedSize: Size(150.w, 40.h),
        ),
        child: CWText(
          text: name,
          fontSize: fontSize,
          color: color,
          fontWeight: fontWeight,
          textAlign: TextAlign.center,
        ));
  }
}
