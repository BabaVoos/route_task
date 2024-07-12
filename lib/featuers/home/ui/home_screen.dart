import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/spacing.dart';
import 'widgets/products_bloc_builder.dart';
import 'widgets/search_field.dart';
import 'widgets/shopping_cart.dart';
import 'widgets/logo.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(16.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Logo(),
                verticalSpacing(15),
                Row(
                  children: [
                    const SearchField(),
                    horizontalSpacing(30),
                    const ShoppingCart(),
                  ],
                ),
                verticalSpacing(25),
                const ProductsBlocBuilder(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
