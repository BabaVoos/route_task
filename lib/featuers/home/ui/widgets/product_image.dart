import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15.r),
              topRight: Radius.circular(15.r),
            ),
            child: Image.network(
              'https://static.nike.com/a/images/t_default/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/89b9c5f5-9049-422d-aa76-19ea5323ef58/air-jordan-1-mid-womens-shoes-XZpP4q.png',
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
          Positioned(
            top: 8.h,
            right: 8.w,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: IconButton(
                icon: const Icon(Icons.favorite_border),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
