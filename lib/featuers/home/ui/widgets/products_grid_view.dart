import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:route_task/featuers/home/ui/widgets/product_item.dart';

import '../../data/models/products_response_model.dart';

class ProductsGridView extends StatelessWidget {
  const ProductsGridView({
    super.key,
    required this.products,
  });

  final List<ProductData> products;

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
        return ProductItem(product: products[index],);
      },
      itemCount: 10,
      shrinkWrap: true,
    );
  }
}
