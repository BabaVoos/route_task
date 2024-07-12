import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ShoppingCart extends StatelessWidget {
  const ShoppingCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/svgs/shopping_cart.svg',
      height: 25.h,
    );
  }
}
