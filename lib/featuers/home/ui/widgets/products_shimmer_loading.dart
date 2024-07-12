import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
import '../../../../core/colors.dart';

class ProductsShimmerLoading extends StatelessWidget {
  const ProductsShimmerLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const BouncingScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10.h,
        crossAxisSpacing: 5.w,
        childAspectRatio: 0.74,
      ),
      itemBuilder: (context, index) {
        return Shimmer.fromColors(
          baseColor: AppColors.lightBlueColor,
          highlightColor: Colors.white,
          child: Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.r),
              side: BorderSide(
                color: AppColors.lightBlueColor,
                width: 2,
              ),
            ),
            child: const SizedBox.shrink(),
          ),
        );
      },
      itemCount: 10,
      shrinkWrap: true,
    );
  }
}
