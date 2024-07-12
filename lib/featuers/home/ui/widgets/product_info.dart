import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:route_task/core/colors.dart';
import 'package:route_task/core/spacing.dart';
import 'package:route_task/core/text_styles.dart';
import 'package:route_task/featuers/home/data/models/products_response_model.dart';

class ProductInfo extends StatelessWidget {
  const ProductInfo({
    super.key,
    required this.product,
  });

  final ProductData product;

  String calculateDiscountedPrice(
    double originalPrice,
    double discountPercentage,
  ) {
    double discountAmount = (discountPercentage / 100) * originalPrice;
    double discountedPrice = originalPrice - discountAmount;
    
    return discountedPrice.toStringAsFixed(2);
  }

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              product.title!,
              style: AppTextStyles.font14DarkBlue400,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              product.description!,
              style: AppTextStyles.font14DarkBlue400,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            verticalSpacing(4),
            Row(
              children: [
                Text(
                  'EGP ${calculateDiscountedPrice(
                    product.price!,
                    product.discountPercentage!,
                  )}',
                  style: AppTextStyles.font14DarkBlue400,
                ),
                horizontalSpacing(10),
                Text(
                  '${product.price} EGP',
                  style: AppTextStyles.font11LightBlue400LineThrough,
                ),
              ],
            ),
            verticalSpacing(2),
            Row(
              children: [
                Text(
                  'Review (4.6)',
                  style: AppTextStyles.font12DarkBlue400,
                ),
                horizontalSpacing(5),
                const Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 20,
                ),
                const Spacer(),
                CircleAvatar(
                  radius: 15.r,
                  backgroundColor: AppColors.blueColor,
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
