import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:route_task/core/colors.dart';
import 'package:shimmer/shimmer.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({
    super.key,
    required this.image,
  });

  final String image;

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
            child: CachedNetworkImage(
              imageUrl: image,
              fit: BoxFit.contain,
              width: double.infinity,
              placeholder: (context, url) {
                return buildImagePlaceHolder();
              },
              imageBuilder: (context, image) {
                return buildImage(image);
              },
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

  Widget buildImage(ImageProvider<Object> image) {
    return Container(
      width: 110.w,
      height: 120.h,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(12.0),
        image: DecorationImage(
          image: image,
          fit: BoxFit.contain,
        ),
      ),
    );
  }

  Widget buildImagePlaceHolder() {
    return Shimmer.fromColors(
      baseColor: AppColors.lightBlueColor,
      highlightColor: Colors.white,
      child: Container(
        width: 110.w,
        height: 120.h,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(12.0),
          color: Colors.white,
        ),
      ),
    );
  }
}
