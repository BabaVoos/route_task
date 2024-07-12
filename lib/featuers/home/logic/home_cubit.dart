import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:route_task/featuers/home/data/repos/products_repo.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final ProductsRepo _productsRepo;

  HomeCubit(this._productsRepo) : super(const HomeState.initial());

  Future<void> getProducts() async {
    emit(const HomeState.loading());
    try {
      final products = await _productsRepo.getProducts();
      emit(HomeState.success(products.products!));
    } catch (e) {
      log(e.toString());
      emit(HomeState.error(e.toString()));
    }
  }
}
