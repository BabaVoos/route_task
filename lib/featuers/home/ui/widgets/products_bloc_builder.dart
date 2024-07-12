import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:route_task/core/dependencey_injection.dart';
import 'package:route_task/featuers/home/data/models/products_response_model.dart';
import 'package:route_task/featuers/home/logic/home_cubit.dart';
import 'package:route_task/featuers/home/logic/home_state.dart';
import 'package:route_task/featuers/home/ui/widgets/products_grid_view.dart';
import 'package:route_task/featuers/home/ui/widgets/products_shimmer_loading.dart';


class ProductsBlocBuilder extends StatelessWidget {
  const ProductsBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<HomeCubit>()..getProducts(),
      child: BlocBuilder<HomeCubit, HomeState>(
        buildWhen: (_, currState) =>
            currState is Loading || currState is Error || currState is Success,
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => setupLoading(),
            success: (products) => setupSuccess(products),
            error: (error) => setupError(error),
            orElse: () {
              return SizedBox.fromSize();
            },
          );
        },
      ),
    );
  }

  Widget setupSuccess(List<ProductData> products) {
    return ProductsGridView(products: products);
  }

  Widget setupError(String error) {
    return Center(
      child: Text(error),
    );
  }

  Widget setupLoading() {
    return const ProductsShimmerLoading();
  }
}
