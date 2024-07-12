import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:route_task/featuers/home/ui/widgets/product_item.dart';

class ProductsGridView extends StatelessWidget {
  const ProductsGridView({
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
        return const ProductItem();
      },
      itemCount: 10,
      shrinkWrap: true,
    );
  }
}
