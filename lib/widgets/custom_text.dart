// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CWText extends StatelessWidget {
  const CWText({
    Key? key,
    required this.text,
    required this.fontSize,
    required this.color,
    required this.fontWeight,
    required this.textAlign,
  }) : super(key: key);

  final String text;
  final int fontSize;
  final Color color;
  final FontWeight fontWeight;
  final TextAlign textAlign;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: fontSize.sp,
        fontWeight: fontWeight,
      ),
      textAlign: textAlign,
    );
  }
}
