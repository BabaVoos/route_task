import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:route_task/core/colors.dart';

class AppTextStyles {
  static TextStyle font14DarkBlue400 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 14.sp,
    color: AppColors.darkBlue,
  );

  static TextStyle font11LightBlue400LineThrough = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 11.sp,
    color: AppColors.blueColor.withOpacity(.6),
    decoration: TextDecoration.lineThrough,
  );

  static TextStyle font12DarkBlue400 = TextStyle(
    fontWeight: FontWeight.w400,
    color: AppColors.darkBlue,
    fontSize: 12.sp,
  );
}
