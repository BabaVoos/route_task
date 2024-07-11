import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:route_task/core/colors.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(30.r),
            ),
            borderSide: const BorderSide(
              color: AppColors.blueColor,
              width: 1.2,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(30.r),
            ),
            borderSide: const BorderSide(
              color: AppColors.blueColor,
              width: 1.2,
            ),
          ),
          contentPadding: EdgeInsets.all(16.sp),
          prefixIcon: Padding(
            padding: EdgeInsets.only(left: 20.w, right: 5.w),
            child: Icon(
              Icons.search_outlined,
              color: AppColors.blueColor,
              size: 30.sp,
            ),
          ),
          hintText: 'What do you search for?',
          hintStyle: TextStyle(
            fontSize: 14.sp,
            color: Colors.grey,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
