import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:route_task/core/colors.dart';
import 'package:route_task/core/spacing.dart';
import 'package:route_task/core/text_styles.dart';

class ProductInfo extends StatelessWidget {
  const ProductInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Nike Air Jordon', style: AppTextStyles.font14Blue400),
            Text(
              'Nike shoes flexible for wo..',
              style: AppTextStyles.font14Blue400,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            verticalSpacing(4),
            Row(
              children: [
                Text(
                  'EGP 1,200 ',
                  style: AppTextStyles.font14Blue400,
                ),
                horizontalSpacing(10),
                Text(
                  '2000 EGP',
                  style: AppTextStyles.font11LightBlue400LineThrough,
                ),
              ],
            ),
            verticalSpacing(2),
            Row(
              children: [
                Text(
                  'Review (4.6)',
                  style: AppTextStyles.font12Blue400,
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
